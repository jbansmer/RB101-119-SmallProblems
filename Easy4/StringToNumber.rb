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

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570

# convert hexadecimal to integer:

HEX = {
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9,
  '0' => 0,
  'A' => 10,
  'B' => 11,
  'C' => 12,
  'D' => 13,
  'E' => 14,
  'F' => 15,
  'a' => 10,
  'b' => 11,
  'c' => 12,
  'd' => 13,
  'e' => 14,
  'f' => 15,
}

def hexadecimal_to_integer(hex_string)
  hex_string_array = hex_string.chars
  hex_array = []
  hex_string_array.each do |element|
    hex_array << HEX.values_at(element)
    hex_array.flatten!
  end
  length = hex_array.length
  number = 0
  index = -1
  multiplier = 0
  until index < -length
    number += hex_array[index] * (16 ** multiplier)
    index -= 1
    multiplier += 1
  end
  number
end

hexadecimal_to_integer('4D9f') == 19871