LETTERS = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)

def get_age
  age = ''
  loop do
    puts "How old are you?"
    age = gets.chomp
    break unless LETTERS.intersect?(age.split(''))
    puts "That's a weird age. Try again..."
  end
  age.to_i
end

def get_retirement_age
  retirement_age = ''
  loop do
    puts "At what age would you like to retire?"
    retirement_age = gets.chomp
    break unless LETTERS.intersect?(retirement_age.split(''))
    puts "That's a weird age. Try again..."
  end
  retirement_age.to_i
end

def calc_time_to_go
  retirement_age = get_retirement_age
  age = get_age
  this_year = Time.now.year
  time_to_go = retirement_age - age
  puts "Right now it is #{this_year}. You will retire in #{this_year + time_to_go}."
  puts "You only have #{time_to_go} years left!"
end

calc_time_to_go