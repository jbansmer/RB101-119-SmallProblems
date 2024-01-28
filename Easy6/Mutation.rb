# what will the code print?

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

# The code will print Moe, Larry, CURLY, SHEMP, Harpo, CHICO, Groucho, Zeppo on successive lines.
# The String objects within array1 are identical to the array objects pushed into array2, so when they are
# mutated with the String#upcase! method, the collections that hold them (both array1 and array2) refelct those changes.