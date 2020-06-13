# frozen_string_literal: true
require 'fraction_calculator'

# Write a program that adds fractions exactly
# Extension: module can perform all four basic arithmetic
# operations exactly on fractions: add, subtract, multiply, divide

describe 'FractionCalculator' do
  context 'is able to add' do
    it '7/3 and 4/5' do
      expect(add('7/3, 4/5')).to eq '47/15'
    end

    it '1/8 and 3/4' do
      expect(add('1/8, 3/4')).to eq '7/8'
    end
  end
end
