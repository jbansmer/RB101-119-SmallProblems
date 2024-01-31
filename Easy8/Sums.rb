# input: array of at least one integer
# output: integer; the sum of successive sums
# algorithm:
# - have a sum_total integer set to 0
# - the first element should be multiplied by the length of the array, added to sum_total
# - the second element should be multiplied by the length of the array - 1, added to sum_total
# - repeat until after the multiplier is 1
# - return sum_total

def sum_of_sums(numbers)
  sum_total = 0
  multiplier = numbers.length
  idx = 0

  loop do
    sum_total += (numbers[idx] * multiplier)
    multiplier -= 1
    idx += 1
    break if multiplier == 0
  end

  sum_total
end

puts sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
puts sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
puts sum_of_sums([4]) == 4
puts sum_of_sums([1, 2, 3, 4, 5]) == 35