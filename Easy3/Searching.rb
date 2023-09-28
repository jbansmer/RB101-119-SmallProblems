def get_number(nth)
  puts "Enter the #{nth} number:"
  number = gets.chomp.to_i
end

def does_contain(number, array)
  puts "The number #{number} appears in #{array}"
end 

def does_not_contain(number, array)
  puts "The number #{number} does not appear in #{array}"
end

def build_array(ordinals=%w(1st 2nd 3rd 4th 5th last))
  array = []
  ordinals.each { |ordinal| array << get_number(ordinal) }
  last = array.pop
  array.include?(last) ? does_contain(last, array) : does_not_contain(last, array)
end

build_array