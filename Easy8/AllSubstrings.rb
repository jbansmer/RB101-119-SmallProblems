# input: string
# output: array of all possible consecutive substrings
# algorithm:
# - use leading_substrings method on full string, then string with 1 character shifted, etc
# - loop through the string, calling leading_substrings then shifting
# - when the string is empty, break
# - flatten the substring array that catches returns from leading_substrings 

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

def substrings(string)
  substrings = []

  loop do
    break if string.empty?
    substrings << leading_substrings(string)
    string.slice!(0)
  end

  substrings.flatten

end

puts substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]