# input: string
# output: hash that displays counts for lowercase, uppercase, and all other chaarcters
# data structures: string, hash (symbols and integers, keys and values, bzw)
# algorithm:
# - create hash with necessary keys and all values 0
# - place each character into an array
# - iterate through array, increase counts in hash prn

def letter_case_count(string)
  hash = { lowercase: 0, uppercase: 0, neither: 0 }
  array = string.chars
  array.each do |char|
    if 'abcdefghijklmnopqrstuvwxyz'.include?(char)
      hash[:lowercase] += 1
    elsif 'ABCDEFGHIJKLMNOPQRSTUVWXYZ'.include?(char)
      hash[:uppercase] += 1
    else
      hash[:neither] += 1
    end
  end
  hash
end

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }