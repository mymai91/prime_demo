require_relative '../app/prime'

output1 = Prime.new(10).sum_list_primes
output2 = Prime.new(20).sum_list_primes
output3 = Prime.new().sum_list_primes

puts "The sum of the primes below 10 is: #{output1}"

puts "The sum of the primes below 20 is: #{output2}"

puts "The sum of the primes below 2_000_000 is: #{output3}"
