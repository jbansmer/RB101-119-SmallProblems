def palindrome?(string)
  array = string.split('')
  reverse = array.reverse.join
  string == reverse ? true : false
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true

# accept either a string or array; do not use conditional statements:

def any_palindrome(object)
  object == object.reverse
end

p any_palindrome('hello olleh') == true
p any_palindrome('palindrome') == false
p any_palindrome([1, 2, 3, 2, 1]) == true
p any_palindrome(['this', "isn't", 'one']) == false