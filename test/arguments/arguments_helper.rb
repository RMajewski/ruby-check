require 'test_helper'

module Arguments
  class ArgumentsHelper < Minitest::Test
    def testString()
      return "Dies ist ein Test"
    end

    def testInteger()
      return 1987
    end

    def testArray()
      return [1, 4, 99, 2148]
    end

    def testObject()
      return Object.new
    end

    def testObjectName()
      return "Test object"
    end
  end
end
