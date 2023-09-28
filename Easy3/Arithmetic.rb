# solicit two positive integers and compute and output the arithmetic values between them:

def get_number(ordinal)
  puts "Provide the #{ordinal} number:"
  number = gets.chomp.to_i
end

def calc_everything(number1, number2)
  {
    '+' => "#{number1 + number2}",
    '-' => "#{number1 - number2}",
    '*' => "#{number1 * number2}",
    '/' => "#{number1 / number2}",
    '%' => "#{number1 % number2}",
    '**' => "#{number1 ** number2}"
  }
end

def print_everything(number1, number2, operations=%w(+ - * / % **))
  operator = calc_everything(number1, number2)
  operations.each do |operation|
    result = operator[operation]
    puts "#{number1} #{operation} #{number2} = #{result}"
  end
end

number1 = get_number('first')
number2 = get_number('second')
print_everything(number1, number2)