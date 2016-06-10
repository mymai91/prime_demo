require_relative 'lib/primee'

class SumOfMostConsecutivePrimes
  include Primee

  def call(number)
    max_prime(number)
  end

  # Get the max element Prime number in Array that each element is a total of most consecutive primes
  # If the primes include in array_primes will return
  #
  # @returns Number
  def max_prime(number)
    array_primes = list_primes(number)
    array_total = total_prime_of_each_primes(array_primes, number)
    last_prime = array_total.last

    array_total.each do |prime|
      p = last_prime - prime
      return p if array_primes.include?(p)
    end
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
  def total_prime_of_each_primes(arr_number, number)
    primes = []

    arr_number.each do |n|
      if sum_of_primes(n) < number
        primes << sum_of_primes(n)
      else
        return primes
      end
    end
  end
end
