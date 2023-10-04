# return a value 0..1439 corresponding to minutes before or after midnight:

MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = 1440

def after_midnight(time)
  time = time.split(":")
  hour = time[0].to_i
  minutes = time[1].to_i
  total_minutes = (hour * MINUTES_PER_HOUR) + minutes
  until total_minutes < MINUTES_PER_DAY
    total_minutes -= MINUTES_PER_DAY
  end
  total_minutes
end

def before_midnight(time)
  time = time.split(":")
  hour = time[0].to_i
  minutes = time[1].to_i
  total_minutes = (hour * MINUTES_PER_HOUR) + minutes
  until total_minutes < MINUTES_PER_DAY
    total_minutes = MINUTES_PER_DAY - total_minutes
  end
  (total_minutes = MINUTES_PER_DAY - total_minutes) if total_minutes > 0
  total_minutes
end

p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0