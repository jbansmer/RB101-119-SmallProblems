# return two arrays with the first half of the elements in the first array
# and the second half in the second array.

# input: single array
# output: two arrays nested inside a larger array
# examples: if input has odd number of elements, the middle element should be in first array
# data structures: array
# algorithm:
# - create three new, empty arrays
# - get size of given array, divide in half
# - up to this number into first array, rest to second array
# - return both arrays in a nesting array

def halvsies(array)
  nesting_array = []
  first_array = []
  second_array = []
  elements = array.size
  halfway = (elements / 2.0).ceil
  idx = 0
  until idx >= halfway
    first_array << array[idx]
    idx += 1
  end
  until idx >= elements
    second_array << array[idx]
    idx += 1
  end
  nesting_array.push(first_array, second_array)
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]
