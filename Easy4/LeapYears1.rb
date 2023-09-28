# leap year rules: divisible by 4, except when also divisble by 100 must only be divisble by 400:

def when_divis_100(year)
  year % 400 == 0
end

def when_divis_4(year)
  year % 4 == 0
end

def leap_year?(year)
  year % 100 == 0 ? when_divis_100(year) : when_divis_4(year)
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true

puts "-----"
# start order of calculations with divisibility by 4 first, then 100, then 400:

def long_leap?(year)
  if (year % 4 == 0) && !(year % 100 == 0)
    true
  elsif
    (year % 4 == 0) && (year % 400 == 0)
    true
  else
    false
  end
end

p long_leap?(2016) == true
p long_leap?(2015) == false
p long_leap?(2100) == false
p long_leap?(2400) == true
p long_leap?(240000) == true
p long_leap?(240001) == false
p long_leap?(2000) == true
p long_leap?(1900) == false
p long_leap?(1752) == true
p long_leap?(1700) == false
p long_leap?(1) == false
p long_leap?(100) == false
p long_leap?(400) == true