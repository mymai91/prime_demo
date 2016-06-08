require_relative '../app/sum_of_all_primes'

MAX_NUMBER = 2_000_000

# Solve problem 1

result = SumOfAllPrimes.new.call(MAX_NUMBER)

puts "The sum of the primes below #{MAX_NUMBER} is: #{result}"
