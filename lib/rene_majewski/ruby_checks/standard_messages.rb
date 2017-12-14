module ReneMajewski
  module RubyChecks
    # This class provides the default messages for the errors.
    class StandardMessages
      # The standard message.
      STANDARD_MESSAGE = "The test object does not fulfill the test."

      # The standard message with variable name.
      STANDARD_MESSAGE_NAME = "The '?' does not fulfill the test."

      # The standard message with a wildcard for additional message.
      MESSAGE_IS = "The test object is ?.".freeze
      
      # Standard message with one wildcard each for variable name and
      # additional message.
      MUST_BE_NAME_IS = "The '?' must be ?.".freeze
        
      class << self
        # Generate the error message for test object is not an array
        #
        # @param objName [String] The name of the object to be tested. 
        #
        # @return [String] The generated error message.
        #   If no object name has been specified, it will be based on an error
        #   message `MESSAGE_IS '.
        #
        #   If the object name has been specified, the error message will be
        #   'MUST_BE_NAME_IS'.
        def messageNoArray(objName = "")
          return generateMessage(objName, "not an array", "an array")
        end # messageNoArray

        # Generate the error message for test object is not an integer
        #
        # @return [String] The generated error message.
        #   If no object name has been specified, it will be based on an error
        #   message `MESSAGE_IS '.
        #
        #   If the object name has been specified, the error message will be
        #   'MUST_BE_NAME_IS'.
        #
        # @return [String] The generated error message.
        def messageNoInteger(objName = "")
          return generateMessage(objName, "not an integer", "an integer")
        end # messageNoInteger

        # Generate the error message for test object is not an object
        #
        # @return [String] The generated error message.
        #   If no object name has been specified, it will be based on an error
        #   message `MESSAGE_IS '.
        #
        #   If the object name has been specified, the error message will be
        #   'MUST_BE_NAME_IS'.
        #
        # @return [String] The generated error message.
        def messageNoObject(objName = "")
          return generateMessage(objName, "not an object", "an object")
        end # messageNoObject

        # Generate the error message for test object is not a string
        #
        # @return [String] The generated error message.
        #   If no object name has been specified, it will be based on an error
        #   message `MESSAGE_IS '.
        #
        #   If the object name has been specified, the error message will be
        #   'MUST_BE_NAME_IS'.
        #
        # @return [String] The generated error message.
        def messageNoString(objName = "")
          return generateMessage(objName, "not a string", "a string")
        end # messageNoString

        # Generate the error message for test object is not nil
        #
        # @return [String] The generated error message.
        #   If no object name has been specified, it will be based on an error
        #   message `MESSAGE_IS '.
        #
        #   If the object name has been specified, the error message will be
        #   'MUST_BE_NAME_IS'.
        #
        # @return [String] The generated error message.
        def messageNoNil(objName = "")
          return generateMessage(objName, "not nil", "nil")
        end # messageNoNil

        # Generate the error message for test object is nil
        #
        # @return [String] The generated error message.
        #   If no object name has been specified, it will be based on an error
        #   message `MESSAGE_IS '.
        #
        #   If the object name has been specified, the error message will be
        #   'MUST_BE_NAME_IS'.
        #
        # @return [String] The generated error message.
        def messageIsNil(objName = "")
          return generateMessage(objName, "nil", "not nil")
        end # messageNoNil

        # Generate the error message for test object is not empty
        #
        # @return [String] The generated error message.
        #   If no object name has been specified, it will be based on an error
        #   message `MESSAGE_IS '.
        #
        #   If the object name has been specified, the error message will be
        #   'MUST_BE_NAME_IS'.
        #
        # @return [String] The generated error message.
        def messageNoEmpty(objName = "")
          return generateMessage(objName, "not empty", "not empty")
        end # messageNoNil

        # Generate the error message for test object is empty
        #
        # @return [String] The generated error message.
        #   If no object name has been specified, it will be based on an error
        #   message `MESSAGE_IS '.
        #
        #   If the object name has been specified, the error message will be
        #   'MUST_BE_NAME_IS'.
        #
        # @return [String] The generated error message.
        def messageIsEmpty(objName = "")
          return generateMessage(objName, "empty", "empty")
        end # messageNoNil

      protected
        # Generate the error message.
        #
        # @param objName [String] The variable name to be test.
        #
        # @param additional [String] The additional message.
        #
        # @param additionalObjectName [String] The additional message for the
        #   object name.
        #
        # @return [String] The generated error message.
        def generateMessage(objName, additional, additionalObjectName = "")
          return MESSAGE_IS.sub('?', additional) if objName.empty? && !additional.empty?
          return STANDARD_MESSAGE_NAME.sub('?', objName) if !objName.empty? && additional.empty? && additionalObjectName.empty?
          return MUST_BE_NAME_IS.sub('?', objName).sub('?', additional) if !objName.empty? && !additional.empty? && additionalObjectName.empty?
          return MUST_BE_NAME_IS.sub('?', objName).sub('?', additionalObjectName) if !objName.empty? && additional.empty? && !additionalObjectName.empty?
          return MUST_BE_NAME_IS.sub('?', objName).sub('?', additionalObjectName) if !objName.empty? && !additional.empty? && !additionalObjectName.empty?
          return STANDARD_MESSAGE
        end # generateMessage (objName, additional)
      end # class << self
    end # class Arguments
  end # module RubyChecks
end # module ReneMajewski
