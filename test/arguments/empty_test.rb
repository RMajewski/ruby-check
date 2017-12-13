require_relative 'arguments_helper'

module Arguments
  class EmptyTest < Arguments::ArgumentsHelper
    def setup()
      @test = ""
      @arguments = ::ReneMajewski::RubyChecks::Arguments.new(@test)
    end

    def test_response_true_with_empty_as_object()
      assert_equal true, @arguments.isEmpty()
      assert_equal "", @arguments.message
    end

    def test_raise_argument_error_with_no_empty_as_object()
      @test = testString
      @arguments = ::ReneMajewski::RubyChecks::Arguments.new(@test)

      exception = assert_raises(ArgumentError) {@arguments.isEmpty()}
      assert_equal ::ReneMajewski::RubyChecks::StandardMessages.messageNoEmpty(), exception.message
      assert_equal ::ReneMajewski::RubyChecks::StandardMessages.messageNoEmpty(), @arguments.message
    end

    def test_false_with_no_empty_as_object_and_no_raised_error()
      @test = testString
      @arguments = ::ReneMajewski::RubyChecks::Arguments.new(@test, false)

      assert_equal false, @arguments.isEmpty()
      assert_equal ::ReneMajewski::RubyChecks::StandardMessages.messageNoEmpty(), @arguments.message
    end

    def test_response_true_with_no_empty_as_object()
      @test = testString
      @arguments = ::ReneMajewski::RubyChecks::Arguments.new(@test)

      assert_equal true, @arguments.isNotEmpty()
      assert_equal "", @arguments.message
    end

    def test_raise_argument_error_with_empty_as_object()
      @test = ""
      @arguments = ::ReneMajewski::RubyChecks::Arguments.new(@test)

      exception = assert_raises(ArgumentError) {@arguments.isNotEmpty()}
      assert_equal ::ReneMajewski::RubyChecks::StandardMessages.messageIsEmpty(), exception.message
      assert_equal ::ReneMajewski::RubyChecks::StandardMessages.messageIsEmpty(), @arguments.message
    end

    def test_false_with_empty_as_object_and_no_raised_error()
      @test = ""
      @arguments = ::ReneMajewski::RubyChecks::Arguments.new(@test, false)

      assert_equal false, @arguments.isNotEmpty()
      assert_equal ::ReneMajewski::RubyChecks::StandardMessages.messageIsEmpty(), @arguments.message
    end
  end
end
