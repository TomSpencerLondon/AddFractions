def add(input)
  fractions = input.split(',').map { |fr| fr.split('/').map { |i| i.to_i } }
  numerator = numerate(fractions)
  denominator = denominate(fractions)
  gcd = numerator.gcd(denominator)

  "#{numerator / gcd }/#{denominator / gcd }"
end


def numerate(fractions)
  add_first_two(fractions)
end

def add_first_two(fractions)
  (fractions[0][0] * fractions[1][1]) + (fractions[0][1] * fractions[1][0])
end

def denominate(fractions)
  fractions.map {|fr| fr[1] }.inject(:*)
end
