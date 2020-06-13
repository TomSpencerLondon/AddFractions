def add(input)
  fractions = input.split(',')
  numerator = (fractions[0].split('/')[0].to_i * fractions[1].split('/')[1].to_i) +
    (fractions[0].split('/')[1].to_i * fractions[1].split('/')[0].to_i)
  denominator = fractions[0].split('/')[1].to_i * fractions[1].split('/')[1].to_i

  "#{numerator}/#{denominator}"
end
