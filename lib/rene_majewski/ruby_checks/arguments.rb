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
        return true if @obj.is_a?(String)

        setMessage(message, ReneMajewski::RubyChecks::StandardMessages.messageNoString)
        raise ArgumentError, @message if @raiseError
        return false
      end # def isString (message)

      # Tests if the `obj` is an array.
      #
      # @param message [String] Message to display.
      #
      # @raise [ArgumentError] Is generated if the `obj` is not an array.
      def isArray(message = "")
        return true if @obj.is_a?(Array)

        setMessage(message, ReneMajewski::RubyChecks::StandardMessages.messageNoArray)
        raise ArgumentError, @message if @raiseError
        return false
      end # def isArray (message)

      # Tests if the `obj` is an integer.
      #
      # @param message [String] Message to display.
      #
      # @raise [ArgumentError] Is generated if the `obj` is not a string.
      def isInteger(message = "")
        return true if @obj.is_a?(Integer)

        setMessage(message, ReneMajewski::RubyChecks::StandardMessages.messageNoInteger)
        raise ArgumentError, @message if @raiseError
        return false
      end # def isInteger (message)

      # Tests if the `obj` is `nil`.
      #
      # @param message [String] Message to display.
      #
      # @raise [ArgumentError] Is generated if the `obj` is not `nil`
      def isNil(message = "")
      end # def isEmpty (message)

      # Test if the `obj` is not `nil`.
      #
      # @param message [String] Message to display.
      #
      # @raise [ArgumentError] Is generated if the `obj` is `nil`.
      def isNotNil(message = "")
      end # def isNotNil (message)

      # Test if the `obj` is empty.
      #
      # @param message [String] Message to display.
      #
      # @raise [ArgumentError] Is generated if the `obj` is not empty.
      def isEmpty(message = "")
      end # def isEmpty (message)

      # Test if the `obj` is not empty.
      #
      # @param message [String] Message to display.
      #
      # @raise [ArgumentError] Is generated if the `obj` is empty.
      def isNotEmpty(message = "")
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
    end # class Arguments
  end # module RubyChecks
end # module ReneMajewski
