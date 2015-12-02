# Add it up!


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

#method name that takes an array as the argument



# Input: Array
# Output: sum of elements of the array
# Steps to solve the problem.
# To solve, iterate through the array.  Add each element.
# Return the sum


# 1. total initial solution
  def total array_name
    sum = 0
    array_name.each do |x|
    sum += x
    end
    sum
  end


# 3. total refactored solution
  def total array_name
  array_name.reduce(:+)
  end



# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array made up of strings
# Output: joined elements of the array into a single string (a sentence).
# Steps to solve the problem.
#def sentence_maker
#iterate over the array
#add spaces at the end of the elements
#capitalize the first letter of the sentence
#add period at end of sentence
#join elements of the array
#return outpus


# 5. sentence_maker initial solution
def sentence_maker array
  array(0).capitalize!
  concatinated = [array].join(" ")
  output = concatinated.to_s
  return output + "."
end


# 6. sentence_maker refactored solution

def sentence_maker array
  array.join(" ").capitalize << "."
end