module ReneMajewski
  module RubyChecks
    class Arguments
      class << self
        # Tests if the `obj` is a string.
        #
        # @param obj [Object] Object to be tested.
        #
        # @param message [String] Message to display.
        #
        # @raise [ArgumentError] Is generated if the `obj` is not a string.
        def isString(obj, message = "")
        end # def isString (obj, message)

        # Tests if the `obj` is an array.
        #
        # @param obj [Object] Object to be tested.
        #
        # @param message [String] Message to display.
        #
        # @raise [ArgumentError] Is generated if the `obj` is not an array.
        def isArray(obj, message = "")
        end # def isArray (obj, message)

        # Tests if the `obj` is an integer.
        #
        # @param obj [Object] Object to be tested.
        #
        # @message [String] Message to display.
        #
        # @raise [ArgumentError] Is generated if the `obj` is not a string.
        def isInteger(obj, message = "")
        end # def isInteger (obj, message)
      end # class << self
    end # class Arguments
  end # module RubyChecks
end # module ReneMajewski