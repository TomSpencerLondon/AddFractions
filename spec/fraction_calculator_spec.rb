# frozen_string_literal: true

require 'fraction_calculator'

# Write a program that adds fractions exactly
# Extension: module can perform all four basic arithmetic
# operations exactly on fractions: add, subtract, multiply, divide

describe 'FractionCalculator' do
  describe 'is able to add' do
    where(:input, :result) do
      [
        [
          '7/3, 4/5', '47/15'
        ],
        [
          '1/8, 3/4', '7/8'
        ],
        [
          '1/3, 1/4', '7/12'
        ],
        [
          '5/6, 8/9', '31/18'
        ],
        [
          '1/3, 1/4, 3/4', '4/3'
        ],
        [
          '1/3, 1/5, 1/4', '47/60'
        ]
      ]
    end

    with_them do
      it 'fractions' do
        expect(add(input)).to eq result
      end
    end
  end
end
