RUBY_ENGINE == 'opal' ? (require 'tex-preprocessor/extension') : (require_relative 'tex-preprocessor/extension')

Extensions.register do
  preprocessor TeXPreprocessor
end
