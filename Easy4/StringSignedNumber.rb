NUMBERS = {
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9,
  '0' => 0
}

def string_to_integer(string)
  string_array = string.chars
  number_array = []
  string_array.each do |element|
    number_array << NUMBERS.values_at(element)
    number_array.flatten!
  end
  length = number_array.length
  number = 0
  index = -1
  multiplier = 1
  until index < -length
    number += number_array[index] * multiplier
    index -= 1
    multiplier *= 10
  end
  number
end

def string_to_signed_integer(string)
  if string[0] == '+'
    string.delete_prefix!('+')
    string_to_integer(string)
  elsif string[0] == '-'
    string.delete_prefix!('-')
    0 - string_to_integer(string)
  else
    string_to_integer(string)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100

# consolidating to only call string_to_integer and string_to_integer[1..-1] once each:

def string_to_integer_consol(string)
  signed_number = string_to_integer(string[1..-1])
  case string[0]
  when '+'
    signed_number
  when '-'
    -signed_number
  else
    string_to_integer(string)
  end
end

p string_to_integer_consol('4321') == 4321
p string_to_integer_consol('-570') == -570
p string_to_integer_consol('+100') == 100