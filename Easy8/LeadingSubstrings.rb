# input: string
# output: array of substrings generating from input string, starting at the first indexed character
# - arrange in ascending order of length
# algorithm:
# - determine length of input string
# - create empty array
# - slice the first element from string, push into the array
# - repeat until the slice index argument is the length of the input string

def leading_substrings(string)
  slice_length = 1
  string_length = string.length
  substrings = []

  loop do
    substrings << string.slice(0, slice_length)
    slice_length += 1
    break if slice_length > string_length
  end
  
  substrings
end

puts leading_substrings('abc') == ['a', 'ab', 'abc']
puts leading_substrings('a') == ['a']
puts leading_substrings('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']