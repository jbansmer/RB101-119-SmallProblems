def center_of(string)
  array = string.split('')
  length = array.length
  if length.odd?
    array[(length / 2)].to_s
  else
    array[(length / 2 - 1)..(length / 2)].join
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'