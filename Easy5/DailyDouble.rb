# eliminate all characters that are duplicates of immideiately preceding characters:
# do not use String#squeeze(!)

def crunch(string)
  length = string.length - 1
  result = "#{string[0]}"
  index = 1
  loop do
    break if index > length
    result.concat(string[index]) if result[-1] != string[index]
    index += 1
  end
  result
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''