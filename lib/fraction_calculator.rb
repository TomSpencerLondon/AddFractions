def add(input)
  fractions = input.split(',').map { |fr| fr.split('/').map { |i| i.to_i } }
  denominator = denominate(fractions)

  numerator = fractions.map { |fr| fr[0] * denominator / fr[1] }.inject(:+)

  gcd = numerator.gcd(denominator)

  "#{numerator / gcd }/#{denominator / gcd }"
end

def denominate(fractions)
  fractions.map {|fr| fr[1] }.inject(:*)
end
