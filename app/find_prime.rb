require_relative '../app/prime'

MAX_NUMBER = 1_000_000
# FindPrime
# Solve problem 2
class FindPrime
  include Prime

  # Select the max number in sum of prime array
  #
  # return @array
  def get_prime_written_as_sum_consecutive_primes(number = MAX_NUMBER)
    sum_of_prime_arr = sum_prime_of_each_primes(number)
    select_primes(sum_of_prime_arr).max
  end

  # Select the number in array if the number is prime
  # return @array
  def select_primes(arr)
    arr.select { |n| prime?(n) }
  end

  # Sum the prime of each prime less then number
  # If the sum > number the loop will break
  # return @array
  def sum_prime_of_each_primes(number)
    primes = []
    list_primes(number).each do |n|
      if sum_list_primes(n) < number
        primes << sum_list_primes(n)
      else
        return primes
      end
    end
  end
end

prime = FindPrime.new

result = prime.get_prime_written_as_sum_consecutive_primes(MAX_NUMBER)
puts "The sum of the primes below #{MAX_NUMBER} is: #{result}"
