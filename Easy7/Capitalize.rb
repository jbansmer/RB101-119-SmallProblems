# input: string containing words, spaces, other characters
# output: new string with only the first letter of each word capitalized
# - if a non-letter is the first character, no capital letters
# data structure: string, new string
# algorithm:
# - split the string at spaces
# - capitalize the first indexed character in each piece

# def word_cap(string)
#   words = string.split(' ')
#   formatted_words = words.map do |word|
#     word.capitalize
#   end
#   formatted_words.join(' ')
# end

# without String#capitalize:

def word_cap(string)
  words = string.split(' ')
  formatted_words = words.map do |word|
    word.downcase!
    capital = word[0].upcase
    word[0] = capital
    word
  end
      p formatted_words.join(' ')
end

puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'