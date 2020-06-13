
def add(input)
  fractions = input.split(',')
  numerator = numerate(fractions)
  denominator = denominate(fractions)
  gcd = numerator.gcd(denominator)

  "#{numerator / gcd }/#{denominator / gcd }"
end


def numerate(fractions)
  (fractions[0].split('/')[0].to_i * fractions[1].split('/')[1].to_i) +
  (fractions[0].split('/')[1].to_i * fractions[1].split('/')[0].to_i)
end

def denominate(fractions)
  fractions[0].split('/')[1].to_i * fractions[1].split('/')[1].to_i
end
