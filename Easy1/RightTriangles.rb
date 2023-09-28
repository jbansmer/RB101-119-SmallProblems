def triangle(length)
  spaces = length - 1
  stars = length - spaces
  length.times do
    puts "#{' ' * spaces}#{'*' * stars}"
    spaces -= 1
    stars += 1
  end
end

triangle(5)
triangle(9)