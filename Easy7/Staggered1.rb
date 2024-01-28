# stagger the capitalization, starting with a capital letter
# non-letters count towards staggering, but should be unchaged
# input: string; output: new string
# algorithm:
# - split words into an array, then each word into characters (nested array structure)
# - loop through each nested array, alternating capitals
#  - even indexed characters become uppercase
#  - odd indexed characters become lowercase

def staggered_case(string)
  chars = string.chars
  
end

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'