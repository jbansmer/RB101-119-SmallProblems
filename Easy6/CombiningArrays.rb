# combine the arrays to yield one array with no duplicated values

# input: two arrays (of integers?)
# output: one array; all values from both arrays with no duplicates
# data structures: arrays
# algorithm:
# - create new array
# - assign values in first array to new array
# - iterate through second array, assign to new array IF not already present

def merge(first_array, second_array)
  new_array = []
  first_array.each { |element| new_array << element }
  second_array.each do |element|
    new_array << element unless new_array.include?(element)
  end
  new_array
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]