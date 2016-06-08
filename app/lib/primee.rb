module Primee
  # List of primes below the input number
  #
  # @returns Array
  def list_primes(number)
    1.upto(number).select { |n| prime?(n) }
  end

  # Sum of the primes below the input number
  #
  # @returns Number
  def sum_of_primes(number)
    list_primes(number).reduce(:+)
  end

  # Check the number is prime
  #
  # @returns Boolean
  def prime?(number)
    value_from = 2
    if number < value_from
      return false
    else
      (value_from..(Math.sqrt(number))).each do |i|
        return false if number % i == 0 || number % (i + 2) == 0
      end
      return true
    end
  end
end
