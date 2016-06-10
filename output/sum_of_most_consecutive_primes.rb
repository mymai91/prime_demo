require_relative '../app/sum_of_most_consecutive_primes'

MAX_NUMBER = 1_000_000
MEDIUM_NUMBER = 1_000
MIN_NUMBER = 400

# Solve problem 2

fine_prime = SumOfMostConsecutivePrimes.new

result_max_number = fine_prime.call(MAX_NUMBER)
result_medium_number = fine_prime.call(MEDIUM_NUMBER)
result_min_number = fine_prime.call(MIN_NUMBER)

puts "The prime as the sum of the most consecutive primes below #{MAX_NUMBER} is: #{result_max_number}"
puts "The prime as the sum of the most consecutive primes below #{MEDIUM_NUMBER} is: #{result_medium_number}"
puts "The prime as the sum of the most consecutive primes below #{MIN_NUMBER} is: #{result_min_number}"
