# Julian calendar applies to years less than 1752. From 1752 on, Gregorian calendar applies.
# Julian calendar - all years divisible by 4 are leap years
# Gregorian calendar - if divisible by 100, must also be divisible by 400 to be a leap year

def when_divis_100(year)
  year % 400 == 0
end

def when_divis_4(year)
  year % 4 == 0
end

def leap_year?(year)
  if year > 1752
    year % 100 == 0 ? when_divis_100(year) : when_divis_4(year)
  else
    year % 4 == 0
  end
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
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true