module ReneMajewski
  module RubyChecks
    # This class provides the default messages for the errors.
    class StandardMessages
      class << self
        MESSAGE_IS = "The test object is ?."

        # Generate the error message for test object is not an array
        #
        # @return [String] The generated error message.
        def messageNoArray
          return MESSAGE_IS.sub('?', "not an array")
        end # messageNoArray

        # Generate the error message for test object is not an integer
        #
        # @return [String] The generated error message.
        def messageNoInteger
          return MESSAGE_IS.sub('?', "not an integer")
        end # messageNoInteger

        # Generate the error message for test object is not an object
        #
        # @return [String] The generated error message.
        def messageNoObject
          return MESSAGE_IS.sub('?', "not an object")
        end # messageNoObject

        # Generate the error message for test object is not a string
        #
        # @return [String] The generated error message.
        def messageNoString
          return MESSAGE_IS.sub('?', "not a string")
        end # messageNoString

        # Generate the error message for test object is not nil
        #
        # @return [String] The generated error message.
        def messageNoNil
          return MESSAGE_IS.sub('?', "not nil")
        end # messageNoNil

        # Generate the error message for test object is nil
        #
        # @return [String] The generated error message.
        def messageIsNil
          return MESSAGE_IS.sub('?', "nil")
        end # messageNoNil

        # Generate the error message for test object is not empty
        #
        # @return [String] The generated error message.
        def messageNoEmpty
          return MESSAGE_IS.sub('?', "not empty")
        end # messageNoNil

        # Generate the error message for test object is empty
        #
        # @return [String] The generated error message.
        def messageIsEmpty
          return MESSAGE_IS.sub('?', "empty")
        end # messageNoNil
      end # class << self
    end # class Arguments
  end # module RubyChecks
end # module ReneMajewski
