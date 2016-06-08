MAX_NUMBER = 2_000_000
MAX_CONSECUTIVE_NUMBER = 1_000_000

# This class to slove prime problem
class Prime
  attr_reader :number

  def initialize(number = MAX_NUMBER)
    @number = number
  end

  # Listing primes below the input number
  # @return array
  def list_primes
    prime_arr = []
    (1..@number).each do |n|
      prime_arr << n if prime?(n)
    end
    prime_arr
  end

  # Sum of the primes below the input number
  # @return number
  def sum_list_primes
    list_primes.inject(0, :+)
  end

  # The number is the sum of the most consecutive primes
  # @return number
  def prime_is_sume_of_consecutive_primes
  end

  # Check the number is prime
  # @return boolean
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
