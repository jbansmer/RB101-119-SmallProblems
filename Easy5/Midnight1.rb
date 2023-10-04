# the argument is the number of minutes after (when positive) or before (when negative) midnight:

HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60

def when_positive(minutes)
  hour, minute = minutes.divmod(MINUTES_PER_HOUR)
  until hour < HOURS_PER_DAY
    hour -= HOURS_PER_DAY
  end
  formatted_hour = sprintf('%.2d', hour)
  formatted_minute = sprintf('%.2d', minute)
  "#{formatted_hour}:#{formatted_minute}"
end

def when_negative(minutes)
  hour, minute = minutes.abs.divmod(MINUTES_PER_HOUR)
  until hour < HOURS_PER_DAY
    hour -= HOURS_PER_DAY
  end
  formatted_hour = sprintf('%.2d', ((HOURS_PER_DAY - 1) - hour))
  formatted_minute = sprintf('%.2d', (MINUTES_PER_HOUR - minute))
  "#{formatted_hour}:#{formatted_minute}"
end

def time_of_day(minutes)
  case minutes <=> 0
  when +1
    when_positive(minutes)
  when -1
    when_negative(minutes)
  else
    "00:00"
  end
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"
p time_of_day(1440) == "00:00"

# using Date and Time methods:

def time_of_day2(minutes)
  t = Time.new(2000)
  hour, minute = minutes.abs.divmod(MINUTES_PER_HOUR)
  until hour < HOURS_PER_DAY
    hour -= HOURS_PER_DAY
  end
  s = Time.new(2000, 1, 1, hour, minute)
  if minutes >= 0
    hr = sprintf('%.2d', s.hour)
    min = sprintf('%.2d', s.min)
  else
    hr = sprintf('%.2d', (HOURS_PER_DAY - 1) - s.hour)
    min = sprintf('%.2d', (MINUTES_PER_HOUR - s.min))
  end
  "#{hr}:#{min}"
end

p time_of_day2(0) == "00:00"
p time_of_day2(-3) == "23:57"
p time_of_day2(35) == "00:35"
p time_of_day2(-1437) == "00:03"
p time_of_day2(3000) == "02:00"
p time_of_day2(800) == "13:20"
p time_of_day2(-4231) == "01:29"
p time_of_day2(1440) == "00:00"

# add the day of the week, with the argument being the minutes after midnight Sunday when positive
# or before midnight Sunday when negative:

DAYS_OF_THE_WEEK = {
  1 => "Sunday",
  2 => "Monday",
  3 => "Tuesday",
  4 => "Wednesday",
  5 => "Thursday",
  6 => "Friday",
  7 => "Saturday"
}

DAYS_PER_WEEK = 7

def time_of_week(minutes)
  t = Time.new(2000)
  hour, minute = minutes.abs.divmod(MINUTES_PER_HOUR)
  days = 1
  until hour < HOURS_PER_DAY
    hour -= HOURS_PER_DAY
    days += 1
  end
  s = Time.new(2000, 1, 1, hour, minute)
  if minutes >= 0
    hr = sprintf('%.2d', s.hour)
    min = sprintf('%.2d', s.min)
    day = DAYS_OF_THE_WEEK[days]
  else
    hr = sprintf('%.2d', (HOURS_PER_DAY - 1) - s.hour)
    min = sprintf('%.2d', (MINUTES_PER_HOUR - s.min))
    day = DAYS_OF_THE_WEEK[(DAYS_PER_WEEK - (days - 1))]
  end
  p "#{day} #{hr}:#{min}"
end

p time_of_week(-4231) == "Thursday 01:29"
p time_of_week(1530) == "Monday 01:30"