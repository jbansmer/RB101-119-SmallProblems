name = ''
loop do
  puts "What is your name?"
  name = gets.chomp
  break unless name.empty?
  puts "C'mon, let's get your name!"
end
if name.include?('!')
  puts "HELLO #{name.upcase} WHY ARE WE SCREAMING?!"
else
  puts "Hello, #{name.capitalize}. Nice to meet you."
end