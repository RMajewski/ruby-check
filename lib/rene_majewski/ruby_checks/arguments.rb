module ReneMajewski
  module RubyChecks
    # This class provides checks for arguments.
    class Arguments
      # Save the object to be tested.
      attr :obj

      # Initialize this class for a argument to test.
      #
      # @param obj [Object] Object to be tested.
      def initialize(obj)
        @obj = obj
      end # initailize

      # Tests if the `obj` is a string.
      #
      # @param message [String] Message to display.
      #
      # @raise [ArgumentError] Is generated if the `obj` is not a string.
      def isString(message = "")
      end # def isString (obj, message)

      # Tests if the `obj` is an array.
      #
      # @param message [String] Message to display.
      #
      # @raise [ArgumentError] Is generated if the `obj` is not an array.
      def isArray(message = "")
      end # def isArray (obj, message)

      # Tests if the `obj` is an integer.
      #
      # @param message [String] Message to display.
      #
      # @raise [ArgumentError] Is generated if the `obj` is not a string.
      def isInteger(message = "")
      end # def isInteger (obj, message)

      # Tests if the `obj` is `nil`.
      #
      # @param message [String] Message to display.
      #
      # @raise [ArgumentError] Is generated if the `obj` is not `nil`
      def isNil(message = "")
      end # def isEmpty (obj, message)

      # Test if the `obj` is not `nil`.
      #
      # @param message [String] Message to display.
      #
      # @param [ArgumentError] Is generated if the `obj` is `nil`.
      def isNotNil(message = "")
      end # def isNotNil
    end # class Arguments
  end # module RubyChecks
end # module ReneMajewski