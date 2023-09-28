# using Enumerable#inject for adding and multiplying ranges:

def inject_sum(first_num, second_num)
  sum = (first_num..second_num).inject(:+)
  puts "The sum of all integers between #{first_num} and #{second_num} is #{sum}."
end

def inject_product(first_num, second_num)
  product = (first_num..second_num).inject(:*)
  puts "The product of all integers between #{first_num} and #{second_num} is #{product}."
end

# original solution:

def calc_sum(first_num, second_num)
  sum = 0
  for numbers in (first_num..second_num)
    sum += numbers
  end
  puts "The sum of all integers between #{first_num} and #{second_num} is #{sum}."
end

def calc_product(first_num, second_num)
  product = 1
  for numbers in (first_num..second_num)
    product *= numbers
  end
  puts "The product of all integers between #{first_num} and #{second_num} is #{product}."
end

def get_number
  number = ''
  loop do
    puts "Enter a number greater than zero:"
    number = gets.chomp.to_i
    break if number > 0
    puts "Let's try again..."
  end
  number
end

def get_operation
  operation = ''
  loop do
    puts "Do you want to compute the sum or product?"
    operation = gets.chomp
    if operation.start_with?('s')
      operation = 'sum'
      break
    elsif operation.start_with?('p')
      operation = 'product'
      break
    else
      puts "Let's try again..."
    end
  end
  operation
end

def sort_numbers(number1, number2)
  numbers = [number1, number2]
  numbers.sort
end

puts "Choose two numbers and an operation to determine the sum or product
between the two numbers."
number1 = get_number
number2 = get_number
operation = get_operation
numbers = sort_numbers(number1, number2)
case operation
when 'sum'
  inject_sum(numbers[0], numbers[1])
when 'product'
  inject_product(numbers[0], numbers[1])
end