# input: array of objects; a single object
# output: boolean depending on wheather the single object was in the array
# data structures: array of random objects; boolean as return
# algorithm:
# - iterate through the array
# - compare equality of each element with the single object
# - return true if any element matches the object

def include?(array, object)
  for element in array
    return true if element == object
  end
  false
end

puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false