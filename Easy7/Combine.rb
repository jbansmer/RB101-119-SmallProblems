# input: two arrays of random objects, with same number of elements
# output: one array with the first array and second array elements alternating
# data structures: arrays; various objects
# algorithm:
# - determine number of elements
# - push 0-indexed elements from each array into a new array
# - repeat until end of array is reached

# def interleave(first_array, second_array)
#   new_array = []
#   length = first_array.size
#   idx = 0
#   loop do
#     new_array << first_array[idx]
#     new_array << second_array[idx]
#     idx += 1
#     break if idx == length
#   end
#   new_array
# end

# using Array#zip:

def interleave(first_array, second_array)
  new_array = first_array.zip(second_array)
  new_array.flatten
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']