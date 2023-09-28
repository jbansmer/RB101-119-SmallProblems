# solicit user input of NE, NW, SW, SE to orient the triangle:

def get_orientation
  corner_orientation = ''
  loop do
    puts "Pick an orientation (NE, NW, SW, or SE):"
    corner_orientation = gets.chomp
    locations = %w(NE NW SW SE)
    break if locations.include?(corner_orientation)
    puts "Unknown location. Try again..."
  end
  corner_orientation
end

def ne_location(length)
  stars = length
  spaces = length - stars
  length.times do
    puts "#{' ' * spaces}#{'*' * stars}"
    spaces += 1
    stars -= 1
  end
end

def nw_location(length)
  stars = length
  spaces = length - stars
  length.times do
    puts "#{'*' * stars}#{' ' * spaces}"
    spaces += 1
    stars -= 1
  end
end

def sw_location(length)
  spaces = length - 1
  stars = length - spaces
  length.times do
    puts "#{'*' * stars}#{' ' * spaces}"
    spaces -= 1
    stars += 1
  end
end

def se_location(length)
  spaces = length - 1
  stars = length - spaces
  length.times do
    puts "#{' ' * spaces}#{'*' * stars}"
    spaces -= 1
    stars += 1
  end
end

def triangle(length)
  location = get_orientation
  case location
  when 'NE'
    ne_location(length)
  when 'NW'
    nw_location(length)
  when 'SW'
    sw_location(length)
  when 'SE'
    se_location(length)
  end
end

triangle(5)
triangle(9)