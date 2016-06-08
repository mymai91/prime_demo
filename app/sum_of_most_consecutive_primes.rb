require_relative 'lib/primee'

class SumOfMostConsecutivePrimes
  include Primee

  def call(number)
    max_prime(number)
  end

  # Get the max element Prime number in Array that each element is a total of most consecutive primes
  #
  # @returns Number
  def max_prime(number)
    array_primes(total_prime_of_each_primes(number)).max
  end

  # Array of primes
  #
  # @returns Array
  def array_primes(arr)
    arr.select { |n| prime?(n) }
  end

  # Total of primes less than the number
  # If the total greater than the number then the loop will break
  #
  # @returns Array
  def total_prime_of_each_primes(number)
    primes = []

    list_primes(number).each do |n|
      if sum_of_primes(n) < number
        primes << sum_of_primes(n)
      else
        return primes
      end
    end
  end
end
