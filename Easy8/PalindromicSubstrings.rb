# input: 
# output: 
# algorithm:
# - 

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

def palindromes(string)

end

palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]