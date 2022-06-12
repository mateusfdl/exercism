# frozen_string_literal: true

# Luhn exercism
class Luhn
  def self.valid?(numbers_string)
    new(numbers_string).valid?
  end

  def valid?
    luhn_sum_divisible_equal_to_zero? && valid_luhn_digits?
  end

  private

  attr_accessor :numbers_string

  def initialize(numbers_string)
    @numbers_string = numbers_string
  end

  def valid_luhn_digits?
    numbers_string.gsub(' ', '').match?(/^\d{2,}$/)
  end

  def luhn_sum_divisible_equal_to_zero?
    sum_numbers.modulo(10).zero?
  end

  def numbers
    numbers_string.gsub(/\d/).map(&:to_i)
  end

  def sum_numbers
    numbers_with_even_index, numbers_with_odd_index = numbers.reverse.partition.each_with_index { _2.even? }

    numbers_with_even_index.sum + numbers_with_odd_index.map { double_luhn_value(_1) }.sum
  end

  def double_luhn_value(value)
    return 2 * value - 9 if value > 4

    value * 2
  end
end
