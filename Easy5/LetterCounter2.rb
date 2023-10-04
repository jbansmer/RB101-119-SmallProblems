# modify the code from LetterCounter1.rb to exclude counting non-alphabetic characters:

LETTERS = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)

def lengths_of_arrayed_strings(array)
  array
  length_array = []
  array.each do |element|
    length_array << element.length
  end
  length_array
end

def eliminate_characters(string)
  all_arrayed = string.split(' ')
  chars_arrayed = []
  all_arrayed.each do |element|
    chars_arrayed << element.chars
  end
  chars_arrayed.each do |char|
    char.keep_if { |element| LETTERS.include?(element) }
  end
  chars_arrayed
end

def word_sizes(string)
  words_array = eliminate_characters(string)
  returned_hash = {}
  length_array = lengths_of_arrayed_strings(words_array)
  words_array.each do |word|
    length = word.length
    count = length_array.count(length)
    returned_hash[length] = count
  end
  p returned_hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}