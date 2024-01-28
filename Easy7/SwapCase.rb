# create a method to do the same thing as String#swapcase:
# input: string
# output: new string with upper- and lowercase letters swapped
# algorithm:
# - create array of individual characters
# - iterate through each character
# - compare upper- and lowercase versions of the character
# - whichever matches, use the other
# - if neither match, it's a non-letter; use original character

def swapcase(string)
  letters = string.chars
  swapped = letters.map do |letter|
    if letter.upcase == letter.downcase
      letter
    else
    letter == letter.upcase ? letter.downcase : letter.upcase
    end
  end
  swapped.join
end

puts swapcase('PascalCase') == 'pASCALcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'