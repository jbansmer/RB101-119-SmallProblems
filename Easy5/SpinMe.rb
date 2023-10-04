# will the following method return a new object or the original string object passed as an argument?

def spin_me(str)
  str.split.each do |word|
    word.reverse!
  end.join(" ")
end

spin_me("hello world") # "olleh dlrow"

# The String#split method creates an array (a new object).
# The Array#each method returnes the original object, which is the new object created by #split.
# The Array#reverse! method mutates its object, which is the calling object 'word'. These individual
# strings within the (new object) array are mutated, but there are two new objects created from the
# original string object that is passed to the method.

def test(array)
  array.each do |word|
    word.reverse
  end
end

arr = ['hey', 'there', 'person']
puts arr.object_id
puts test(arr).object_id

# CORRECTION FROM ABOVE:
# String#split does create a new object, but Array#each does not. The strings within the created array
# are mutated and the array created by #split is modified, because Array#each returns the original array.
# String#split is the key to generating a new object, since both #each and #reverse! modify the object in place.
# 
# When an array is passed in, the return value of Array#each is ALWAYS the original array, despite a mutating
# method (reverse!) being used.