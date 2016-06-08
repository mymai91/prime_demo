# This module to help slove prime problems
module Prime
  # Listing primes below the input number
  # @return array
  def list_primes(number)
    1.upto(number).select { |n| prime?(n) }
  end

  # Sum of the primes below the input number
  # @return number
  def sum_list_primes(number)
    arr = list_primes(number)
    sum(arr)
  end

  # Sum of the array number
  # @return number
  def sum(arr)
    arr.reduce(:+)
  end

  # Check the number is prime
  # @return boolean
  def prime?(number)
    value_from = 2
    if number < value_from
      return false
    else
      (value_from..(Math.sqrt(number))).each do |i|
        return false if number % i == 0 || number % (i + 2) == 0
      end
      return true
    end
  end
end
