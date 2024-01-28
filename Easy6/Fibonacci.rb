# input: integer
# output: integer representing number of integers to get to input number of digits in fibonacci sequence

def find_fibonacci_index_by_length(digits)
  fibonaccis = [1, 1]
  loop do
    break if fibonaccis[-1].digits.size == digits
    fibonaccis << (fibonaccis[-1] + fibonaccis[-2])
  end
  fibonaccis.size
end

puts find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847