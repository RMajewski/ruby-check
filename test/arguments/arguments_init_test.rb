require_relative 'arguments_helper'

module Arguments
  class InitTest < Arguments::ArgumentsHelper
    def setup()
    end

    def test_right_attributes_after_create()
      test = testObject
      @arguments = ::ReneMajewski::RubyChecks::Arguments.new(test)

      assert_equal test, @arguments.obj
      assert_equal true, @arguments.raiseError
      assert_equal "", @arguments.message
    end

    def test_right_attributes_after_create_with_no_raise_error
      test = testObject
      @arguments = ::ReneMajewski::RubyChecks::Arguments.new(test, false)

      assert_equal test, @arguments.obj
      assert_equal false, @arguments.raiseError
      assert_equal "", @arguments.message
    end
  end
end

