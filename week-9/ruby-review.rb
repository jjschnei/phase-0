# Reverse Words


# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.

# Pseudocode

# create a new empty array for the reversed words
# turn each word into an element of an array
# iterate through the array
# reverse each word

# Initial Solution
sentence = "Break the problem down into small steps, then write out those steps into pseudocode."

def word_reverser(sentence)
  word_array = []
  letter_array = []
  word_array = sentence.split(" ")
  letter_array = word_array.map do |word|
    word.split("")
  end
  return reverse_array_of_split_words(letter_array).join(" ")
end

def reverse_array_of_split_words(split_word_array)
  split_word_array.map do |word|
    # p word
    reversed_word = []
    i = word.length - 1

    while i >= 0
      reversed_word << word[i]
      i -= 1
    end

    reversed_word.join("")

  end
end

p word_reverser(sentence)


# Refactored Solution

sentence = "Break the problem down into small steps, then write out those steps into pseudocode."



def reverse_word(sentence)
  array_sentence = []
  array_sentence = sentence.split(" ")
  array_sentence.each do |x|
    x.reverse!
  end
  p array_sentence
end

reverse_word(sentence)



# Reflection