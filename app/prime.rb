MAX_NUMBER = 2_000_000

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
      if prime?(n)
        prime_arr << n
      end
    end
    return prime_arr
  end

  # Sum of the primes below the input number
  # @return number
  def sum_list_primes
    list_primes.inject(0, :+)
  end

  # Check the number is prime
  # @return boolean
  def prime?(number)
    value_from = 2
    if number < value_from
      return false
    else
      for i in value_from..(Math.sqrt(number)) do
        if (number % i == 0 || number % (i+2) == 0)
          return false
        end
      end
      return true
    end
  end
end
