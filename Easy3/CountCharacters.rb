puts "Write a word or multiple words:"
phrase = gets.chomp
characters = phrase.delete(' ').length
puts "There are #{characters} characters in '#{phrase}'."

# use this notation for double quotes:

puts "There are #{characters} characters in \"#{phrase}\"."