def add(input)
  fractions = input.split(',').map { |fr| fr.split('/').map { |i| i.to_i } }
  numerator = numerate(fractions)
  denominator = denominate(fractions)
  gcd = numerator.gcd(denominator)

  "#{numerator / gcd }/#{denominator / gcd }"
end


def numerate(fractions)
  if fractions.size == 2
    return add_first_two(fractions)
  end

  result = [
    [add_first_two(fractions), (denominate(fractions) / 4)],
    [fractions[2][0], fractions[2][1]]
  ]
  add_first_two(result)
end

def add_first_two(fractions)
  (fractions[0][0] * fractions[1][1]) + (fractions[0][1] * fractions[1][0])
end

def denominate(fractions)
  fractions.map {|fr| fr[1] }.inject(:*)
end
