def ascii_value(string)
  array = string.chars
  sum = 0
  loop do
    break if array.empty?
    sum += array[0].ord
    array.shift
  end
  sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0