def find_message_length(message)
  length = message.length
end

def print_vertical_border(length)
  dashes = '-' * length
  puts "+-#{dashes}-+"
end

def print_blank_middle(length)
  spaces = ' ' * length
  puts "| #{spaces} |"
end

def print_message(message)
  puts "| #{message} |"
end

def print_in_box(message)
  print_vertical_border(find_message_length(message))
  print_blank_middle(find_message_length(message))
  print_message(message)
  print_blank_middle(find_message_length(message))
  print_vertical_border(find_message_length(message))
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')