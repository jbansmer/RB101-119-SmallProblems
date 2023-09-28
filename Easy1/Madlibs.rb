# "Mad libs are a #{adjective_1} game where you #{verb_1} a story #{noun_1} with #{noun_2}s for #{noun_3}s.
# You, or #{noun_4}, then construct a list of words and #{verb_2} them into the #{noun_5},
# #{adverb_1} creating an often #{adjective_2} or funny story as a #{noun_6}."

# adjective, verb, noun, pl noun, pl noun, noun, verb, noun, adverb, adjective, noun

def get_adjective
  puts "Provide an adjective:"
  gets.chomp
end

def get_verb
  puts "Provide a verb:"
  gets.chomp
end

def get_noun
  puts "Provide a noun:"
  gets.chomp
end

def get_adverb
  puts "Provide an adverb:"
  gets.chomp
end

def madlibs
  adjective_1 = get_adjective
  verb_1 = get_verb
  noun_1 = get_noun
  noun_2 = get_noun
  noun_3 = get_noun
  noun_4 = get_noun
  verb_2 = get_verb
  noun_5 = get_noun
  adverb_1 = get_adverb
  adjective_2 = get_adjective
  noun_6 = get_noun
  puts "Mad libs are a #{adjective_1} game where you #{verb_1} a story #{noun_1} with #{noun_2}s for #{noun_3}s.
        You, or #{noun_4}, then construct a list of words and #{verb_2} them into the #{noun_5},
        #{adverb_1} creating an often #{adjective_2} or funny story as a #{noun_6}."
end

madlibs