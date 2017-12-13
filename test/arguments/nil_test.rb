require_relative 'arguments_helper'

module Arguments
  class NilTest < Arguments::ArgumentsHelper
    def setup()
      @test = nil
      @arguments = ::ReneMajewski::RubyChecks::Arguments.new(@test)
    end

    def test_response_true_with_nil_as_object()
      assert_equal true, @arguments.isNil()
      assert_equal "", @arguments.message
    end

    def test_raise_argument_error_with_no_nil_as_object()
      @test = testString
      @arguments = ::ReneMajewski::RubyChecks::Arguments.new(@test)

      exception = assert_raises(ArgumentError) {@arguments.isNil()}
      assert_equal ::ReneMajewski::RubyChecks::StandardMessages.messageIsNil(), exception.message
      assert_equal ::ReneMajewski::RubyChecks::StandardMessages.messageIsNil(), @arguments.message
    end

    def test_false_with_no_nil_as_object_and_no_raised_error()
      @test = testInteger
      @arguments = ::ReneMajewski::RubyChecks::Arguments.new(@test, false)

      assert_equal false, @arguments.isNil()
      assert_equal ::ReneMajewski::RubyChecks::StandardMessages.messageIsNil(), @arguments.message
    end

    def test_response_true_with_no_nil_as_object()
      @test = testInteger
      @arguments = ::ReneMajewski::RubyChecks::Arguments.new(@test)

      assert_equal true, @arguments.isNotNil()
      assert_equal "", @arguments.message
    end

    def test_raise_argument_error_with_nil_as_object()
      @test = nil
      @arguments = ::ReneMajewski::RubyChecks::Arguments.new(@test)

      exception = assert_raises(ArgumentError) {@arguments.isNotNil()}
      assert_equal ::ReneMajewski::RubyChecks::StandardMessages.messageNoNil(), exception.message
      assert_equal ::ReneMajewski::RubyChecks::StandardMessages.messageNoNil(), @arguments.message
    end

    def test_false_with_nil_as_object_and_no_raised_error()
      @test = nil
      @arguments = ::ReneMajewski::RubyChecks::Arguments.new(@test, false)

      assert_equal false, @arguments.isNotNil()
      assert_equal ::ReneMajewski::RubyChecks::StandardMessages.messageNoNil(), @arguments.message
    end
  end
end
