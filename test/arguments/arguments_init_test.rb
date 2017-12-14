require_relative 'arguments_helper'

module Arguments
  class InitTest < Arguments::ArgumentsHelper
    def setup()
    end

    def test_right_attributes_after_create()
      obj = testObject
      @arguments = ::ReneMajewski::RubyChecks::Arguments.new(obj)

      assert_equal obj, @arguments.obj
      assert_equal true, @arguments.raiseError
      assert_equal "", @arguments.objectName
      assert_equal "", @arguments.message
    end

    def test_right_attributes_after_create_with_no_raise_error
      obj = testObject
      @arguments = ::ReneMajewski::RubyChecks::Arguments.new(obj, "", false)

      assert_equal obj, @arguments.obj
      assert_equal "", @arguments.objectName
      assert_equal false, @arguments.raiseError
      assert_equal "", @arguments.message
    end

    def test_right_attributes_after_create_with_a_object_name
      obj = testObject
      objName = testObjectName
      @arguments = ::ReneMajewski::RubyChecks::Arguments.new(obj, objName, false)

      assert_equal obj, @arguments.obj
      assert_equal objName, @arguments.objectName
      assert_equal false, @arguments.raiseError
      assert_equal "", @arguments.message
    end

    def test_right_raise_error_after_set_raise_error
      obj = testObject
      @arguments = ::ReneMajewski::RubyChecks::Arguments.new(obj)

      assert_equal true, @arguments.raiseError

      @arguments.setRaiseError(false)

      assert_equal false, @arguments.raiseError
    end
  end
end

