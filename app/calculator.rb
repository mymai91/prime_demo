require_relative '../app/prime'

MAX_NUMBER = 2_000_000

# Calculator
# Solve problem 1
class Calculator
  include Prime

  # Print result sum_of_primes
  # param default is MAX_NUMBER
  # return @number
  def sum_of_primes(number = MAX_NUMBER)
    sum_list_primes(number)
  end
end

cal = Calculator.new

result = cal.sum_of_primes

puts "The sum of the primes below #{MAX_NUMBER} is: #{result}"
