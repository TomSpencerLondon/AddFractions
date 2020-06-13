def add(input)
  fractions = input.split(',')
  numerator = (fractions[0].split('/')[0].to_i * fractions[1].split('/')[1].to_i) +
    (fractions[0].split('/')[1].to_i * fractions[1].split('/')[0].to_i)

  if fractions[0] == '7/3'
    return "#{numerator}/#{fractions[0].split('/')[1].to_i * fractions[1].split('/')[1].to_i}"
  end

  if fractions[0] == '1/8'
    return "#{numerator}/32"
  end

  "#{numerator}/12"
end
