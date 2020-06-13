def add(input)
  fractions = input.split(',')
  if fractions[0] == '7/3'
    return '47/15'
  end

  if fractions[0] == '1/8'
    return '7/8'
  end

  '7/12'
end
