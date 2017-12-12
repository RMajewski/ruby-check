$LOAD_PATH.unshift File.expand_path('/gem/lib', __FILE__)

# Configuration coverage
require 'simplecov'
SimpleCov.formatter = SimpleCov::Formatter::HTMLFormatter
SimpleCov.start do
  add_filter %r{^/test/}
end

# load modules an classes to test
require 'rm-ruby-checks'

# Configuration minitest
require 'minitest/autorun'
require 'minitest/reporters'

Minitest::Reporters.use! [Minitest::Reporters::HtmlReporter.new, Minitest::Reporters::DefaultReporter.new]

