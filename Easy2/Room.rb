# Solicit input about a room's length and width, output the area.
# User should determine the unit.

LETTERS = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
SQ_METER_TO_FEET = 10.7639    # sq feet
SQ_FEET_TO_METER = 0.0929      # sq meter

def get_unit
  unit = ''
  loop do
    puts "Choose a unit of measure (meters or feet):"
    unit = gets.chomp
    if unit.start_with?('m')
      unit = 'meters'
      break
    elsif unit.start_with?('f')
      unit = 'feet'
      break
    else
    "Unknown unit. Try again..."
    end
  end
  unit
end

def get_length(unit)
  length = ''
  loop do
    puts "How long is the room in #{unit}?"
    length = gets.chomp
    if LETTERS.intersect?(length.split(''))
      puts "That doesn't seem like a length..."
    else
      break
    end
  end
  length.to_f
end

def get_width(unit)
  width = ''
  loop do
    puts "How wide is the room in #{unit}?"
    width = gets.chomp
    if LETTERS.intersect?(width.split(''))
      puts "That doesn't seem like a length..."
    else
      break
    end
  end
  width.to_f
end

def calc_area(length, width, unit)
  area = length * width
  case unit
  when 'meters'
    puts "The room is #{area.round(0, half: :down)} square meters and #{(area * SQ_METER_TO_FEET).round(0, half: :down)} square feet."
  when 'feet'
    puts "The room is #{area.round(0, half: :down)} square feet and #{(area * SQ_FEET_TO_METER).round(0, half: :down)} square meters."
  end
end

unit = get_unit
length = get_length(unit)
width = get_width(unit)
calc_area(length, width, unit)