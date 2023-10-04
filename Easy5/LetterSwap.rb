def swap(string)
  words_array = string.split(' ')
  words_array.map! do |word|
    letters = word.chars
    if letters.length > 1
      first = letters.shift
      last = letters.pop
      letters.unshift(last)
      letters.push(first)
    end
      letters.join
  end
  words_array.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'