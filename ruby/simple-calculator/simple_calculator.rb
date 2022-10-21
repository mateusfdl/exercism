class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
  class UnsupportedOperation < StandardError; end

  class << self
    def calculate(first_operand, second_operand, operation)
      return 'Division by zero is not allowed.' if division?(operation) && second_operand.zero?

      raise_error(first_operand, second_operand, operation)

      result = first_operand.send(operation, second_operand)
      "#{first_operand} #{operation} #{second_operand} = #{result}"
    end

    def raise_error(first_operand, second_operand, operation)
      raise ArgumentError if string?(first_operand, second_operand)
      raise UnsupportedOperation if operation.nil? || operation.empty?
      raise UnsupportedOperation if operation.size > 1
    end

    def string?(first_operand, second_operand)
      first_operand.is_a?(String) || second_operand.is_a?(String)
    end

    def division?(operation)
      operation == '/'
    end
  end
end
