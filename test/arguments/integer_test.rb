require_relative 'arguments_helper'

module Arguments
  class IntegerTest < Arguments::ArgumentsHelper
    def setup()
      @test = testInteger
      @arguments = ::ReneMajewski::RubyChecks::Arguments.new(@test)
    end

    def test_response_true_with_integer_as_object()
      assert_equal true, @arguments.isInteger()
      assert_equal "", @arguments.message
    end

    def test_raise_argument_error_with_no_integer_as_object()
      @test = testString
      @arguments = ::ReneMajewski::RubyChecks::Arguments.new(@test)

      exception = assert_raises(ArgumentError) {@arguments.isInteger()}
      assert_equal ::ReneMajewski::RubyChecks::StandardMessages.messageNoInteger(), exception.message
      assert_equal ::ReneMajewski::RubyChecks::StandardMessages.messageNoInteger(), @arguments.message
    end

    def test_false_with_no_integer_as_object_and_no_raised_error()
      @test = testArray
      @arguments = ::ReneMajewski::RubyChecks::Arguments.new(@test, "", false)

      assert_equal false, @arguments.isInteger()
      assert_equal ::ReneMajewski::RubyChecks::StandardMessages.messageNoInteger(), @arguments.message
    end

    def test_false_with_no_integer_as_object_and_no_raised_error_and_object_name
      @test = testArray
      @objName = testObjectName
      @arguments = ::ReneMajewski::RubyChecks::Arguments.new(@test, @objName, false)

      assert_equal false, @arguments.isInteger()
      assert_equal ::ReneMajewski::RubyChecks::StandardMessages.messageNoInteger(@objName),
       @arguments.message 
    end
  end
end
