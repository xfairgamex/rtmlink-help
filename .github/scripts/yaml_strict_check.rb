#!/usr/bin/env ruby
# frozen_string_literal: true

# Strict YAML check: syntax errors AND duplicate mapping keys, at any depth.
#
# Why not plain YAML.safe_load: Ruby (like most lenient parsers) silently keeps
# the LAST of two duplicate keys, so a stacked `status:` in meta/registry.yaml
# sails through -- but the app's screenshot harness parses the registry strictly
# and rejects the whole file, blocking every capture. Walking the Psych AST sees
# duplicates before they collapse.
#
# Usage:
#   yaml_strict_check.rb FILE...                 whole YAML files (e.g. meta/registry.yaml)
#   yaml_strict_check.rb --frontmatter FILE...   the YAML frontmatter of Markdown files
#                                                (files without frontmatter are skipped)
#
# Output: GitHub Actions ::error annotations (still readable when run locally).
# Exit 1 if anything is wrong.

require "psych"

QUOTE_HINT = 'Quote any value that contains a colon, e.g. description: "... RTMLink: the ...". See meta/AUTHORING-GUIDE.md.'
DUP_HINT   = "Delete the stale duplicate: lenient parsers keep the last one silently, but the screenshot harness's strict parser rejects the whole file."

# Recursively walk the AST; record an error for every repeated scalar key
# within the same mapping. line_offset shifts reported lines when the text
# was cut out of a larger file (frontmatter).
def find_duplicate_keys(node, errors, file, line_offset)
  case node
  when Psych::Nodes::Mapping
    seen = {}
    node.children.each_slice(2) do |key, value|
      if key.is_a?(Psych::Nodes::Scalar)
        line = key.start_line + 1 + line_offset
        if seen[key.value]
          errors << "::error file=#{file},line=#{line}::Duplicate key `#{key.value}:` (already set on line #{seen[key.value]}). #{DUP_HINT}"
        else
          seen[key.value] = line
        end
      else
        find_duplicate_keys(key, errors, file, line_offset)
      end
      find_duplicate_keys(value, errors, file, line_offset)
    end
  when Psych::Nodes::Sequence, Psych::Nodes::Document, Psych::Nodes::Stream
    node.children.each { |child| find_duplicate_keys(child, errors, file, line_offset) }
  end
end

def check_yaml(text, file:, line_offset: 0)
  errors = []
  begin
    ast = Psych.parse_stream(text)
    find_duplicate_keys(ast, errors, file, line_offset)
  rescue Psych::SyntaxError => e
    errors << "::error file=#{file},line=#{e.line + line_offset}::Invalid YAML (#{e.problem}). #{QUOTE_HINT}"
  end
  errors
end

# Frontmatter = the lines between an opening "---" on line 1 and the next
# line that is exactly "---" (trailing whitespace allowed). Same extraction
# GitBook performs; files that don't open with "---" have none and pass.
def frontmatter_errors(path)
  lines = File.read(path).lines
  return [] unless lines.first&.chomp == "---"

  close = lines[1..-1].index { |l| l.match?(/\A---[[:space:]]*\z/) }
  if close.nil?
    return ["::error file=#{path},line=1::Frontmatter never closed: the opening --- has no matching closing --- line."]
  end

  check_yaml(lines[1, close].join, file: path, line_offset: 1)
end

frontmatter_mode = ARGV.first == "--frontmatter"
files = frontmatter_mode ? ARGV[1..-1] : ARGV
abort "usage: yaml_strict_check.rb [--frontmatter] FILE..." if files.empty?

failures = files.flat_map do |path|
  next ["::error file=#{path}::File not found."] unless File.file?(path)

  frontmatter_mode ? frontmatter_errors(path) : check_yaml(File.read(path), file: path)
end

puts failures
exit(failures.empty? ? 0 : 1)
