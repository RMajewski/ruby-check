require 'test_helper'

class StandardMessagesTest < Minitest::Test
  def setup()
  end

  def test_right_error_message_for_no_array()
    assert_equal "The test object is not an array.",
      ::ReneMajewski::RubyChecks::StandardMessages.messageNoArray
  end

  def test_right_error_message_for_no_string()
    assert_equal "The test object is not a string.",
      ::ReneMajewski::RubyChecks::StandardMessages.messageNoString
  end

  def test_right_error_message_for_no_integer()
    assert_equal "The test object is not an integer.",
      ::ReneMajewski::RubyChecks::StandardMessages.messageNoInteger
  end

  def test_right_error_message_for_no_object()
    assert_equal "The test object is not an object.",
      ::ReneMajewski::RubyChecks::StandardMessages.messageNoObject
  end

  def test_right_error_message_for_no_nil()
    assert_equal "The test object is not nil.",
      ::ReneMajewski::RubyChecks::StandardMessages.messageNoNil
  end

  def test_right_error_message_for_is_nil()
    assert_equal "The test object is nil.",
      ::ReneMajewski::RubyChecks::StandardMessages.messageIsNil
  end

  def test_right_error_message_for_no_empty()
    assert_equal "The test object is not empty.",
      ::ReneMajewski::RubyChecks::StandardMessages.messageNoEmpty
  end

  def test_right_error_message_for_is_empty()
    assert_equal "The test object is empty.",
      ::ReneMajewski::RubyChecks::StandardMessages.messageIsEmpty
  end
end
