require 'spec_helper'

describe Primee do
  include Primee

  before do
    @arr_primes_of_one = []
    @arr_primes_of_two = [2]
    @arr_primes_of_three = [2, 3]
    @arr_primes_of_ten = [2, 3, 5, 7]
  end
  
  describe '#prime?(number)' do
    it 'check the number < 2 is not prime' do
      expect(prime?(1)).to eq(false)
    end

    it 'check the number == 2' do
      expect(prime?(2)).to eq(true)
    end

    it 'check the number is 3' do
      expect(prime?(3)).to eq(true)
    end

    it 'check the number is 1000' do
      expect(prime?(10)).to eq(false)
    end
  end

  describe '#list_primes' do
    it 'list prime of 1' do
      expect(list_primes(1)).to eq(@arr_primes_of_one)
    end

    it 'list prime of 2' do
      expect(list_primes(2)).to eq(@arr_primes_of_two)
    end

    it 'list prime of 3' do
      expect(list_primes(3)).to eq(@arr_primes_of_three)
    end

    it 'list prime of 10' do
      expect(list_primes(10)).to eq(@arr_primes_of_ten)
    end
  end

  describe '#sum_of_primes' do
    it 'list prime of 1' do
      expect(sum_of_primes(1)).to eq(@arr_primes_of_one.reduce(:+))
    end

    it 'list prime of 2' do
      expect(sum_of_primes(2)).to eq(@arr_primes_of_two.reduce(:+))
    end

    it 'list prime of 3' do
      expect(sum_of_primes(3)).to eq(@arr_primes_of_three.reduce(:+))
    end

    it 'list prime of 10' do
      expect(sum_of_primes(10)).to eq(@arr_primes_of_ten.reduce(:+))
    end
  end
end
