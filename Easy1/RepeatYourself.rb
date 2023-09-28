# Write a method that uses the given method call to print the string the integer number of times:
def repeat(string, integer)
integer.times { puts string }
end

repeat('Hello', 3)