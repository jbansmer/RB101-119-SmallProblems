# use the multiply(x, y) method from Multiply.rb to find the square of a given number:

def multiply(number1, number2)
  number1 * number2
end

def square(number)
  multiply(number, number)
end

# p square(5) == 25
# p square(-8) == 64

# use multiply(x, y) to determine a given number to a given power:

def raise_to_power(number, power)
  number ** power.times{ square(number) }
end

p raise_to_power(2, 3)
p 2**3
p raise_to_power(3, 4)
p 3**4
p raise_to_power(4, 5)
p 4**5