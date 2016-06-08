require 'spec_helper'

describe 'Prime' do
  describe '#prime?(number)' do
    before do
      @caculator_prime = Prime.new(20)
    end
    it 'check the number < 2 is not prime' do
      expect(@caculator_prime.prime?(1)).to eq(false)
    end

    it 'check the number == 2' do
      expect(@caculator_prime.prime?(2)).to eq(true)
    end

    it 'check the number is 3' do
      expect(@caculator_prime.prime?(3)).to eq(true)
    end

    it 'check the number is 1000' do
      expect(@caculator_prime.prime?(10)).to eq(false)
    end
  end

  describe '#list_primes' do
    before do
      @list_prime_of_number_one = Prime.new(1).list_primes
      @list_prime_of_number_two = Prime.new(2).list_primes
      @list_prime_of_number_three = Prime.new(3).list_primes
      @list_prime_of_number_ten = Prime.new(10).list_primes
      @result_prime_of_number_one = []
      @result_prime_of_number_two = [2]
      @result_prime_of_number_three = [2, 3]
      @result_prime_of_number_ten = [2, 3, 5, 7]
    end
    it 'list prime of 1' do
      expect(@list_prime_of_number_one).to eq(@result_prime_of_number_one)
    end

    it 'list prime of 2' do
      expect(@list_prime_of_number_two).to eq(@result_prime_of_number_two)
    end

    it 'list prime of 3' do
      expect(@list_prime_of_number_three).to eq(@result_prime_of_number_three)
    end

    it 'list prime of 10' do
      expect(@list_prime_of_number_ten).to eq(@result_prime_of_number_ten)
    end
  end

  describe '#sum_list_primes' do
    before do
      @sum_primes_number_one = Prime.new(1).sum_list_primes
      @sum_primes_number_two = Prime.new(2).sum_list_primes
      @sum_primes_number_three = Prime.new(3).sum_list_primes
      @sum_primes_number_ten = Prime.new(10).sum_list_primes
      @result_sum_prime_number_one = 0
      @result_sum_prime_number_two = 2
      @result_sum_prime_number_three = 5
      @result_sum_prime_number_ten = 17
    end
    it 'list prime of 1' do
      expect(@sum_primes_number_one).to eq(@result_sum_prime_number_one)
    end

    it 'list prime of 2' do
      expect(@sum_primes_number_two).to eq(@result_sum_prime_number_two)
    end

    it 'list prime of 3' do
      expect(@sum_primes_number_three).to eq(@result_sum_prime_number_three)
    end

    it 'list prime of 10' do
      expect(@sum_primes_number_ten).to eq(@result_sum_prime_number_ten)
    end
  end
end
