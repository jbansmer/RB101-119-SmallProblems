def running_total(array)
  running_array = []
  additions = array.length
  index = 0
  loop do
    running_array << array[0..index].sum
    break if index == additions
    index += 1
  end
  running_array.pop
  running_array
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []

def running_total_reduce(array)
  running_array = []
  running_array << array.reduce do |sum, number|
    running_array << sum
    sum += number
  end
  running_array
end

p running_total_reduce([2, 5, 13]) == [2, 7, 20]
p running_total_reduce([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total_reduce([3]) == [3]
p running_total_reduce([]) == []     # this returns [nil], which evaluates as false against []... unsure how to proceed