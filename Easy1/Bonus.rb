# Write a method that returns half the argument amount if true, zero if false:

def calculate_bonus(salary, qualify)
  qualify ? (salary / 2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000