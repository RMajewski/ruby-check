module ReneMajewski
  module RubyChecks
    # This class provides the default messages for the errors.
    class StandardMessages
      class << self
        MESSAGE_NO = "The test object is ?."

        # Generate the error message for test object is not an array
        def messageNoArray
          return MESSAGE_NO.sub('?', "not an array")
        end # messageNoArray

        # Generate the error message for test object is not an integer
        def messageNoInteger
          return MESSAGE_NO.sub('?', "not an integer")
        end # messageNoInteger

        # Generate the error message for test object is not an object
        def messageNoObject
          return MESSAGE_NO.sub('?', "not an object")
        end # messageNoObject

        # Generate the error message for test object is not a string
        def messageNoString
          return MESSAGE_NO.sub('?', "not a string")
        end # messageNoString
      end # class << self
    end # class Arguments
  end # module RubyChecks
end # module ReneMajewski
