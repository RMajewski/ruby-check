module ReneMajewski
  module RubyChecks
    # This class provides checks for arguments.
    class Arguments
      # Save the object to be tested.
      attr_reader :obj

      # Saves if an error should be raised.
      #
      # If `true`, the error should be raised. If `false`, the error should be
      # not raise.
      attr_reader :raiseError

      # Saves the error message.
      attr_reader :message

      # Saves the name of the object to be tested.
      attr_reader :objectName

      # Initialize this class for a argument to test.
      #
      # @param obj [Object] Object to be tested.
      #
      # @param objName [String] The name of the object to be tested.
      #
      # @param raiseError [Boolean] Indicates whether an error should be raised.
      #   If `true`, the error should be raised. If `false`, the error should be
      #   not raise.
      def initialize(obj, objName = "", raiseError = true)
        @obj = obj
        @objectName = objName
        @raiseError = raiseError
        @message = ""
      end # initailize

      # Saves whether or not an error should be triggered if a validation is
      # false.
      #
      # @param raiseError [Boolean] Indicates whether an error should be raised.
      #   If `true`, the error should be raised. If `false`, the error should be
      #   not raise.
      def setRaiseError(raiseError)
        @raiseError = raiseError
      end # setRaiseError (raiseError)

      # Tests if the `obj` is a string.
      #
      # @param message [String] Message to display.
      #
      # @raise [ArgumentError] Is generated if the `obj` is not a string.
      def isString(message = "")
        return isA(
          String,
          message,
          ReneMajewski::RubyChecks::StandardMessages.messageNoString(
            @objectName 
          )
        )
      end # def isString (message)

      # Tests if the `obj` is an array.
      #
      # @param message [String] Message to display.
      #
      # @raise [ArgumentError] Is generated if the `obj` is not an array.
      def isArray(message = "")
        return isA(
          Array,
          message,
          ReneMajewski::RubyChecks::StandardMessages.messageNoArray(
            @objectName 
          )
        )
      end # def isArray (message)

      # Tests if the `obj` is an integer.
      #
      # @param message [String] Message to display.
      #
      # @raise [ArgumentError] Is generated if the `obj` is not a string.
      def isInteger(message = "")
        return isA(
          Integer,
          message,
          ReneMajewski::RubyChecks::StandardMessages.messageNoInteger(
            @objectName 
          )
        )
      end # def isInteger (message)

      # Tests if the `obj` is `nil`.
      #
      # @param message [String] Message to display.
      #
      # @raise [ArgumentError] Is generated if the `obj` is not `nil`
      def isNil(message = "")
        return true if !@obj

        setMessageRaiseError(
          message,
          ReneMajewski::RubyChecks::StandardMessages.messageIsNil(
            @objectName 
          )
        )
        return false
      end # def isEmpty (message)

      # Test if the `obj` is not `nil`.
      #
      # @param message [String] Message to display.
      #
      # @raise [ArgumentError] Is generated if the `obj` is `nil`.
      def isNotNil(message = "")
        return true if @obj

        setMessageRaiseError(
          message,
          ReneMajewski::RubyChecks::StandardMessages.messageNoNil(
            @objectName 
          )
        )
        return false
      end # def isNotNil (message)

      # Test if the `obj` is empty.
      #
      # @param message [String] Message to display.
      #
      # @raise [ArgumentError] Is generated if the `obj` is not empty.
      def isEmpty(message = "")
        return true if @obj.empty?

        setMessageRaiseError(
          message,
          ReneMajewski::RubyChecks::StandardMessages.messageNoEmpty(
            @objectName 
          )
        )
        return false
      end # def isEmpty (message)

      # Test if the `obj` is not empty.
      #
      # @param message [String] Message to display.
      #
      # @raise [ArgumentError] Is generated if the `obj` is empty.
      def isNotEmpty(message = "")
        return true if !@obj.empty?

        setMessageRaiseError(
          message,
          ReneMajewski::RubyChecks::StandardMessages.messageIsEmpty(
            @objectName
          )
        )
        return false
      end # def isNotEmpty (message)

    private
      # Set the message and raised a error.
      #
      # Is the message is set, use message as message.
      #
      # Is the message not set, us standard as message.
      #
      # @param message [String] The alternate message.
      #
      # @param standard [String] The standard message.
      def setMessageRaiseError(message, standard)
        @message = message if message
        @message = standard

        raise ArgumentError, @message if @raiseError
      end # getMessage(message)

      # Test the `obj` is not the object in `classes`.
      #
      # @param classes [Object] The test class.
      #
      # @param message [String] The alternate message for negative test.
      #
      # @param standard [String] The standard message for negative test.
      #
      # @return [true] If the `obj` a `classes`.
      #
      # @return [false] If the `obj` not a `classes`.
      #
      # @raise [ArgumentError] If the the test negative.
      def isA(classes, message, standard)
        return true if @obj.is_a?(classes)

        setMessageRaiseError(message, standard)
        return false
      end # isA (classes, message, standard)
    end # class Arguments
  end # module RubyChecks
end # module ReneMajewski
