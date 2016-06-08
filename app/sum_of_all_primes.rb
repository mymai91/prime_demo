require_relative 'lib/primee'

class SumOfAllPrimes
  include Primee

  def call(number)
    sum_of_primes(number)
  end
end
