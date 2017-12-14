require_relative 'arguments_helper'

module Arguments
  class ArrayTest < Arguments::ArgumentsHelper
    def setup()
      @test = testArray
      @arguments = ::ReneMajewski::RubyChecks::Arguments.new(@test)
    end

    def test_response_true_with_array_as_object()
      assert_equal true, @arguments.isArray()
      assert_equal "", @arguments.message
    end

    def test_raise_argument_error_with_no_array_as_object()
      @test = testString
      @arguments = ::ReneMajewski::RubyChecks::Arguments.new(@test)

      exception = assert_raises(ArgumentError) {@arguments.isArray()}
      assert_equal ::ReneMajewski::RubyChecks::StandardMessages.messageNoArray(), exception.message
      assert_equal ::ReneMajewski::RubyChecks::StandardMessages.messageNoArray(), @arguments.message
    end

    def test_false_with_no_array_as_object_and_no_raised_error()
      @test = testInteger
      @arguments = ::ReneMajewski::RubyChecks::Arguments.new(@test, "", false)

      assert_equal false, @arguments.isArray()
      assert_equal ::ReneMajewski::RubyChecks::StandardMessages.messageNoArray(), @arguments.message
    end

    def test_false_With_no_array_as_object_and_no_raised_error_and_object_name
      @test = testInteger
      @objName = testObjectName
      @arguments = ::ReneMajewski::RubyChecks::Arguments.new(@test,@objName, false)

      assert_equal false, @arguments.isArray()
      assert_equal ::ReneMajewski::RubyChecks::StandardMessages.messageNoArray(objName),
       @arguments.message 
    end
  end
end
