# return the string with non-alphabetic characters replaced by a space, with no consecutive spaces:

LETTERS = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)

def cleanup(string)
  string = string.chars
  string.map! do |letter|
    if LETTERS.include?(letter)
      letter = letter
    else
      letter = ' '
    end
  end
  string = string.join
  array = string.chars
  array_index = 0
  array_length = array.length
  result = ''
  loop do
    break if array[array_index] == nil
    if array[array_index] == ' ' && array[array_index + 1] == ' '
      array_index += 1
    else
      result << array[array_index]
      array_index += 1
    end
  end
  p result
end

p cleanup("---what's my +*& line?") == ' what s my line '