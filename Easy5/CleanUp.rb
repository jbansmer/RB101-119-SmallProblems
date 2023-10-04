# return the string with non-alphabetic characters replaced by a space, with no consecutive spaces:

LETTERS = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)

def next_in_array(element)
  new_array = []

end

def cleanup(string)
  chars = string.split(' ')
  letters_array = []
  p chars
  # chars.map! do |letter|
  #   if LETTERS.include?(letter)
  #     letters_array << letter
  #   else
  #     letters_array << ' '
  #   end
  # end
  # p string = letters_array.join
end

# cleanup("---what's my +*& line?") == ' what s my line '
# p next_in_array(["---what's"])
# p next_in_array(["+*&"])
# p next_in_array(["my"])

p "   what s".strip