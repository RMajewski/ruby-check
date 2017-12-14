require 'test_helper'

class StandardMessagesTest < Minitest::Test
  def setup()
    @name = "test"
  end

  def test_right_text_for_standard_message()
    assert_equal "The test object does not fulfill the test.",
      ::ReneMajewski::RubyChecks::StandardMessages::STANDARD_MESSAGE
  end

  def test_right_text_for_standard_message_with_name()
    assert_equal "The '?' does not fulfill the test.",
      ::ReneMajewski::RubyChecks::StandardMessages::STANDARD_MESSAGE_NAME
  end

  def test_right_text_for_message_is()
    assert_equal "The test object is ?.",
      ::ReneMajewski::RubyChecks::StandardMessages::MESSAGE_IS
  end

  def test_right_text_for_must_be_with_object_name_is()
    assert_equal "The '?' must be ?.",
      ::ReneMajewski::RubyChecks::StandardMessages::MUST_BE_NAME_IS
  end

  def test_right_error_message_for_no_array()
    assert_equal "The test object is not an array.",
      ::ReneMajewski::RubyChecks::StandardMessages.messageNoArray
  end

  def test_right_error_message_for_no_array_with_object_name()
    assert_equal "The '#{@name}' must be an array.",
      ::ReneMajewski::RubyChecks::StandardMessages.messageNoArray(@name)
  end

  def test_right_error_message_for_no_string()
    assert_equal "The test object is not a string.",
      ::ReneMajewski::RubyChecks::StandardMessages.messageNoString
  end

  def test_right_error_message_for_no_string_with_object_name()
    assert_equal "The '#{@name}' must be a string.",
      ::ReneMajewski::RubyChecks::StandardMessages.messageNoString(@name)
  end

  def test_right_error_message_for_no_integer()
    assert_equal "The test object is not an integer.",
      ::ReneMajewski::RubyChecks::StandardMessages.messageNoInteger
  end

  def test_right_error_message_for_no_integer_with_object_name()
    assert_equal "The '#{@name}' must be an integer.",
      ::ReneMajewski::RubyChecks::StandardMessages.messageNoInteger(@name)
  end

  def test_right_error_message_for_no_object()
    assert_equal "The test object is not an object.",
      ::ReneMajewski::RubyChecks::StandardMessages.messageNoObject
  end

  def test_right_error_message_for_no_object_with_object_name()
    assert_equal "The '#{@name}' must be an object.",
      ::ReneMajewski::RubyChecks::StandardMessages.messageNoObject(@name)
  end

  def test_right_error_message_for_no_nil()
    assert_equal "The test object is not nil.",
      ::ReneMajewski::RubyChecks::StandardMessages.messageNoNil
  end

  def test_right_error_message_for_no_nil_with_object_name()
    assert_equal "The '#{@name}' must be nil.",
      ::ReneMajewski::RubyChecks::StandardMessages.messageNoNil(@name)
  end

  def test_right_error_message_for_is_nil()
    assert_equal "The test object is nil.",
      ::ReneMajewski::RubyChecks::StandardMessages.messageIsNil
  end

  def test_right_error_message_for_is_nil_with_object_name()
    assert_equal "The '#{@name}' must be not nil.",
      ::ReneMajewski::RubyChecks::StandardMessages.messageIsNil(@name)
  end

  def test_right_error_message_for_no_empty()
    assert_equal "The test object is not empty.",
      ::ReneMajewski::RubyChecks::StandardMessages.messageNoEmpty
  end

  def test_right_error_message_for_no_empty_with_object_name()
    assert_equal "The '#{@name}' must be not empty.",
      ::ReneMajewski::RubyChecks::StandardMessages.messageNoEmpty(@name)
  end

  def test_right_error_message_for_is_empty()
    assert_equal "The test object is empty.",
      ::ReneMajewski::RubyChecks::StandardMessages.messageIsEmpty
  end

  def test_right_error_message_for_is_empty_with_object_name()
    assert_equal "The '#{@name}' must be empty.",
      ::ReneMajewski::RubyChecks::StandardMessages.messageIsEmpty(@name)
  end

  # ===== generateMessage =====
  class GenerateMessageTest < ::ReneMajewski::RubyChecks::StandardMessages
    def self.testGenerateMessage(objName = "", alternate = "", alternateObjName = "")
      return generateMessage(objName, alternate, alternateObjName)
    end
  end

  def test_right_message_for_generate_message_without_object_name_without_alternate_without_alternate_object_name
    assert_equal "The test object does not fulfill the test.",
      GenerateMessageTest.testGenerateMessage
  end

  def test_right_message_for_generate_message_without_object_name_with_alternate_without_alternate_object_name
    alternate = "nil"
    assert_equal "The test object is #{alternate}.",
      GenerateMessageTest.testGenerateMessage("", alternate, "")
  end

  def test_right_message_for_generate_message_with_object_name_without_alternate_without_alternate_object_name
    objName = "test"
    assert_equal "The '#{objName}' does not fulfill the test.",
      GenerateMessageTest.testGenerateMessage(objName, "", "")
  end

  def test_right_message_for_generate_message_with_object_name_with_alternate_without_alternate_object_name
    objName = "test"
    alternate = "not nil"
    assert_equal "The '#{objName}' must be #{alternate}.",
      GenerateMessageTest.testGenerateMessage(objName, alternate, "")
  end

  def test_right_message_for_generate_message_with_object_name_with_alternate_with_alternate_object_name
    objName = "test"
    alternate = "not nil"
    alternateObjName = "nil"
    assert_equal "The '#{objName}' must be #{alternateObjName}.",
      GenerateMessageTest.testGenerateMessage(objName, alternate, alternateObjName)
  end
end
