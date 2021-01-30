require 'asciidoctor/extensions' unless RUBY_ENGINE == 'opal'

include Asciidoctor

class TeXPreprocessor < Extensions::Preprocessor

  def process document, reader
    return reader if reader.eof?
    reader.unshift_lines reader.read_lines  # this is the culprit
    reader
  end

end
