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
end
