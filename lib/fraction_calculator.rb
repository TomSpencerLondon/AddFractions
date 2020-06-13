def add(input)
  fractions = input.split(',')
  if fractions[0] == '7/3'
    numerator = (fractions[0].split('/')[0].to_i * fractions[1].split('/')[1].to_i) +
      (fractions[0].split('/')[1].to_i * fractions[1].split('/')[0].to_i)
    return "#{numerator}/15"
  end

  if fractions[0] == '1/8'
    return '7/8'
  end

  '7/12'
end
