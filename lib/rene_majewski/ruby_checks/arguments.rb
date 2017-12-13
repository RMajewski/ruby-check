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

      # Initialize this class for a argument to test.
      #
      # @param obj [Object] Object to be tested.
      #
      # @param raiseError [Boolean] Indicates whether an error should be raised.
      #   If `true`, the error should be raised. If `false`, the error should be
      #   not raise.
      def initialize(obj, raiseError = true)
        @obj = obj
        @raiseError = raiseError
        @message = ""
      end # initailize

      # Tests if the `obj` is a string.
      #
      # @param message [String] Message to display.
      #
      # @raise [ArgumentError] Is generated if the `obj` is not a string.
      def isString(message = "")
        return isA(String, message, ReneMajewski::RubyChecks::StandardMessages.messageNoString)
      end # def isString (message)

      # Tests if the `obj` is an array.
      #
      # @param message [String] Message to display.
      #
      # @raise [ArgumentError] Is generated if the `obj` is not an array.
      def isArray(message = "")
        return isA(Array, message, ReneMajewski::RubyChecks::StandardMessages.messageNoArray)
      end # def isArray (message)

      # Tests if the `obj` is an integer.
      #
      # @param message [String] Message to display.
      #
      # @raise [ArgumentError] Is generated if the `obj` is not a string.
      def isInteger(message = "")
        return isA(Integer, message, ReneMajewski::RubyChecks::StandardMessages.messageNoInteger)
      end # def isInteger (message)

      # Tests if the `obj` is `nil`.
      #
      # @param message [String] Message to display.
      #
      # @raise [ArgumentError] Is generated if the `obj` is not `nil`
      def isNil(message = "")
        return true if !@obj

        setMessage(message, ReneMajewski::RubyChecks::StandardMessages.messageIsNil)
        raise ArgumentError, @message if @raiseError
        return false
      end # def isEmpty (message)

      # Test if the `obj` is not `nil`.
      #
      # @param message [String] Message to display.
      #
      # @raise [ArgumentError] Is generated if the `obj` is `nil`.
      def isNotNil(message = "")
        return true if @obj

        setMessage(message, ReneMajewski::RubyChecks::StandardMessages.messageNoNil)
        raise ArgumentError, @message if @raiseError
        return false
      end # def isNotNil (message)

      # Test if the `obj` is empty.
      #
      # @param message [String] Message to display.
      #
      # @raise [ArgumentError] Is generated if the `obj` is not empty.
      def isEmpty(message = "")
        return true if @obj.empty?

        setMessage(message, ReneMajewski::RubyChecks::StandardMessages.messageNoEmpty)
        raise ArgumentError, @message if @raiseError
        return false
      end # def isEmpty (message)

      # Test if the `obj` is not empty.
      #
      # @param message [String] Message to display.
      #
      # @raise [ArgumentError] Is generated if the `obj` is empty.
      def isNotEmpty(message = "")
        return true if !@obj.empty?

        setMessage(message, ReneMajewski::RubyChecks::StandardMessages.messageIsEmpty)
        raise ArgumentError, @message if @raiseError
        return false
      end # def isNotEmpty (message)

    private
      # Set the message.
      #
      # Is the message is set, use message as message.
      #
      # Is the message not set, us standard as message.
      #
      # @param message [String] The alternate message.
      #
      # @param standard [String] The standard message.
      def setMessage(message, standard)
        @message = message if message
        @message = standard
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

        setMessage(message, standard)
        raise ArgumentError, @message if @raiseError
        return false
      end # isA
    end # class Arguments
  end # module RubyChecks
end # module ReneMajewski
