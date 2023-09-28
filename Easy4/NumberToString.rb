def integer_to_string(number)
  number_array = number.digits.reverse
  number_array.join
end

p integer_to_string(4321) == '4321'
p integer_to_string(0) == '0'
p integer_to_string(5000) == '5000'

# too easy, use an interative method through a constant of all numbers:

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

def int_to_string(number)
  string = ''
  loop do
    number, remainder = number.divmod(10)
    string.prepend(NUMBERS[remainder])
    break if number == 0
  end
  string
end

p int_to_string(4321) == '4321'
p int_to_string(0) == '0'
p int_to_string(5000) == '5000'

# The above solution works because Integer#divmod returns both the result of the division and the remainder.
# They can be stored as separate variables and manipulated in different ways. Using arithmetic operators:

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

p arith_to_string(4321) == '4321'
p arith_to_string(0) == '0'
p arith_to_string(5000) == '5000'