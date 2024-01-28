# Input: float representing an angle
# Output: degree, minute, second representation of that angle
# 60 minutes per degree, 60 seconds per minute
# degrees should not include a leading zero, single zero as placeholder
# minutes and seconds should always use two digits, incl. a leading zero prn

# for minutes: decimal multply by 60, repeat for seconds
# - 76.73 = 76 deg, (0.73 * 60) min (=> 43.8), (0.8 *60) sec => 76, 43, 48

DEGREE = "\xC2\xB0"
MIN_IN_DEGREES = 60
SEC_IN_MINUTES = 60

def dms(angle)
  if angle >= 0
    angle -= 360 until angle <= 360
  else
    angle += 360 until angle > 0
  end

  degrees = angle.truncate
  min_fraction = ((angle - degrees) * MIN_IN_DEGREES).round(2)
  minutes = min_fraction.truncate
  seconds = ((min_fraction - minutes) * SEC_IN_MINUTES).round(0)

  degrees = sprintf('%.1d', degrees)
  minutes = sprintf('%.2d', minutes)
  seconds = sprintf('%.2d', seconds)

  %(#{degrees}#{DEGREE}#{minutes}'#{seconds}")
end

# All test cases should return true
puts dms(30) == %(30°00'00")
puts dms(76.73) == %(76°43'48")
puts dms(254.6) == %(254°36'00")
puts dms(93.034773) == %(93°02'05")
puts dms(0) == %(0°00'00")
puts dms(360) == %(360°00'00") || dms(360) == %(0°00'00")

puts dms(400) == %(40°00'00")
puts dms(760) == %(40°00'00")
puts dms(-40) == %(320°00'00")
puts dms(-420) == %(300°00'00")
