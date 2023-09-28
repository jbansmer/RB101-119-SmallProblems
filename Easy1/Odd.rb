# Write a method (with #odd? or #even?) that determines if the argument's absolute value is odd:

def is_odd?(number)
  number % 2 != 0
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true

# rewrite using the integer#remainder method:
puts '--'

def is_odd_remainder?(number)
  number.remainder(2) != 0
end

puts is_odd_remainder?(2)    # => false
puts is_odd_remainder?(5)    # => true
puts is_odd_remainder?(-17)  # => true
puts is_odd_remainder?(-8)   # => false
puts is_odd_remainder?(0)    # => false
puts is_odd_remainder?(7)    # => true