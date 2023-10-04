# return an array of the numbers listed in a given integer:

# def digit_list(number)
#   number.digits.reverse
# end

# more brute-forced:

def digit_list(number)
  number_of_digits = number.to_s.length
  result = []
  number_of_digits.times do
    result << number % 10
    number /= 10
  end
  result.reverse
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true