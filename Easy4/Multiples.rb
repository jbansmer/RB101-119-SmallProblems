# add all multiples of 3 and 5 (individual multiples and duplicates only once) between 0 and the given number:

def multisum(number)
  multiples = []
  for num in (1..number)
    multiples << num if num % 3 == 0 || num % 5 == 0
  end
  multiples.sum
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(20) == 98
p multisum(1000) == 234168

# using Enumerable#inject / Enumerable#reduce:

def multisum_reduce(number)
  multiples = []
  for num in (1..number)
    multiples << num if num % 3 == 0 || num % 5 == 0
  end
  multiples.inject(:+)
end

# I can't seem to figure out how to use inject to select for divisible integers.
# The documentation is unclear and outside resources are helpful but outside
# the scope of implementation in this scenario.

p multisum_reduce(3) == 3
p multisum_reduce(5) == 8
p multisum_reduce(10) == 33
p multisum_reduce(20) == 98
p multisum_reduce(1000) == 234168