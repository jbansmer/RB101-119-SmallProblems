# reverse the elements in the given array and return a new array with the reversed elements:

# input: array
# output: reversed elements of input array; a new array object
# data structures: arrays of string objects
# algorithm:
# - create new array object as empty array
# - iterate through input array and use Array#unshift to populate new array
# - return the new array

def reverse(array)
  new_array = []
  array.each { |ele| new_array.unshift(ele) }
  new_array
end

# using Enumerable#reduce:

def reverse(array)
  array.reduce([], :unshift)
end

puts reverse([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse(%w(a b e d c)) == %w(c d e b a)  # => true
puts reverse(['abc']) == ['abc']              # => true
puts reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
puts list.object_id != new_list.object_id  # => true
puts list == [1, 3, 2]                     # => true
puts new_list == [2, 3, 1]                 # => true
