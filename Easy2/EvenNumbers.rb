# Print all even numbers 1-99, inclusive, with each number on a separate line:

for number in (1..99)
  puts number if number.even?
end

# Using Array#select:

numbers = Array(1..99)
numbers.select do |num|
  puts num if num % 2 == 0
end