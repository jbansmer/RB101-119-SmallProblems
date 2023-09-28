# MAX_WIDTH characters per line max, wrap to next line without splitting words:

MAX_WIDTH = 70

def find_printable_message(message)
  message_array = []
  message_array.push(message.split('')).flatten!
  split_index = (MAX_WIDTH - 1)
  if message_array.size > MAX_WIDTH
    loop do
      if message_array[split_index] == " "
        break
      else
        message_array.pop
      split_index -= 1
      end
    end
  else
    split_index = message_array.size
  end
  split_index
end

def find_message_length(message)
  message_array = []
  message_array.push(message.split('')).flatten!
  message_lengths_array = []
  working_message = message_array.join
  loop do
    until message_array.size < MAX_WIDTH
      find_printable_message(working_message)
      split_index = find_printable_message(working_message)
      message_lengths_array << split_index + 1
      message_array.shift(split_index + 1)
      working_message = message_array.join
    end
    working_message = message_array.join
    message_lengths_array << find_printable_message(working_message)
    break
  end
  message_lengths_array
end

def find_longest_line(message)
  length = message.size
  if length == 0
    longest_line = [1]
  elsif length < MAX_WIDTH
    longest_line = [length +1]
  else
    message_line_lengths = find_message_length(message)
    longest_line = message_line_lengths.sort_by! {|length| -length }
  end
  longest_line[0]
end

def config_message(message)
  message_line_lengths = find_message_length(message)
  message_array = []
  message_array.push(message.split('')).flatten!
  messages_array = []
  message_line_lengths.each do |line|
    messages_array << message_array[0..(line - 1)].join
    message_array.shift(line)
  end
  messages_array
end

def print_message(message)
  longest_line = find_longest_line(message)
  messages_array = config_message(message)
  lines = messages_array.size
  messages_array.each do |line|
    line.slice(-1)
    spaces = longest_line - line.size
    puts "| #{line}#{' ' * spaces}|"
  end
end

def print_vertical_border(message)
  length = (find_longest_line(message) - 1)
  dashes = '-' * length
  puts "+-#{dashes}-+"
end

def print_blank_middle(message)
  length = (find_longest_line(message) - 1)
  spaces = ' ' * length
  puts "| #{spaces} |"
end

def print_in_box(message)
  print_vertical_border(message)
  print_blank_middle(message)
  print_message(message)
  print_blank_middle(message)
  print_vertical_border(message)
end

print_in_box("Hey there!")
print_in_box('')
print_in_box('123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 123456789 1234567890')
print_in_box("This is a test for text wrapping within a box that doesn't cut words off until a space is found. The box has a changeable maximum number of characters within which to fit, and should automatically select the longest line around which to form the box. I think this is long enough - here we go...")