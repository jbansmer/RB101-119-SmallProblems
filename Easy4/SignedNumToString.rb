NUMBERS = {
  0 => '0',
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 => '6',
  7 => '7',
  8 => '8',
  9 => '9'
}

def arith_to_string(number)
  string = ''
  loop do
    remainder = number % 10
    number = number / 10
    string.prepend(NUMBERS[remainder])
    break if number == 0
  end
  string
end

def signed_integer_to_string(number)
  string = arith_to_string(number.abs)
  if number > 0
    string.prepend('+')
  elsif number < 0
    string.prepend('-')
  else
    string
  end
  string
end

p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'