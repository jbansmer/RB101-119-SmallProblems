puts "What is you name?"
name = gets.chomp.capitalize
name = "Teddy" if name.empty?
age = rand(20..200)

puts "#{name} is #{age} years old!"