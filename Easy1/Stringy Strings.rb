# return a string of alternatig 1s and 0s, starting with 1, the length of the argument:

def stringy(number)
  string = ''
  range = 1..number
  for numbers in range
    if numbers.even?
      string += '0'
    else
      string += '1'
    end
  end
  string
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
puts stringy(0) == ''

# A cleaner way uses a ternary operator:

def stringy_two(number)
  array = []
  number.times do |index|
    element = index.even? ? 1 : 0
    array << element
  end
  array.join
end

puts stringy_two(6) == '101010'
puts stringy_two(9) == '101010101'
puts stringy_two(4) == '1010'
puts stringy_two(7) == '1010101'
puts stringy_two(0) == ''

# modify stringy to take an optional argument that defaults to 1, otherwise have the returned
# string start with 0:

def more_stringy(number, start=1)
  array = [start]
  if start == 1
    number.times do |index|
      element = index.even? ? 0 : 1
      array << element
    end
  else
    number.times do |index|
      element = index.even? ? 1 : 0
      array << element
    end
  end
  array.pop
  array.join
end

puts more_stringy(6, 0)
puts more_stringy(4)
puts more_stringy(7)
puts more_stringy(0)