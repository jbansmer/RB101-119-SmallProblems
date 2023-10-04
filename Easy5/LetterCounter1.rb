# return a hash that lists the frequency of the number of characters in space-separated words (symbols included in word):

def lengths_of_arrayed_strings(array)
  array
  length_array = []
  array.each do |element|
    length_array << element.length
  end
  length_array
end

def word_sizes(string)
  words_array = string.split(' ')
  returned_hash = {}
  length_array = lengths_of_arrayed_strings(words_array)
  words_array.each do |word|
    length = word.length
    count = length_array.count(length)
    returned_hash[length] = count
  end
  returned_hash
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}