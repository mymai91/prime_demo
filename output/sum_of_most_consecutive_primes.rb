require_relative '../app/sum_of_most_consecutive_primes'

MAX_NUMBER = 1_000_000

# Solve problem 2

result = SumOfMostConsecutivePrimes.new.call(MAX_NUMBER)

puts "The prime as the sum of the most consecutive primes below #{MAX_NUMBER} is: #{result}"
