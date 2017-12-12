require 'test_helper'

class VersionTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::ReneMajewski::RubyChecks::VERSION
  end
  
  def test_that_it_has_the_right_version_number
    assert_equal '0.1.0', ::ReneMajewski::RubyChecks::VERSION
  end
end
