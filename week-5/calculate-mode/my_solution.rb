# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?
#take an array of numbers or strings
# What is the output? (i.e. What should the code return?)
#Array of the most frequent values

# What are the steps needed to solve the problem?
# Iterate through the array
# Turn the array into a hash, each item from the array will be a key. The frequency of that key will be the value.
#Push the key of the highest value to a new array
#return new array


# 1. Initial Solution
def mode(array)
  mode_hash = Hash.new
  array.each do |x|
    if mode_hash.has_key?(x)
      mode_hash[x] += 1
    else
      mode_hash[x] = 1
    end
  end
  a = mode_hash.values.sort.last
  answer_array = []
  mode_hash.each do |key, value|
    if value == a
      answer_array << key
    end
  end

  return answer_array

end


# 3. Refactored Solution
def mode(array)
  mode_hash = Hash.new
  array.each do |x|
    if mode_hash.has_key?(x)
      mode_hash[x] += 1
    else
      mode_hash[x] = 1
    end
  end
  a = mode_hash.values.sort.last
  answer_array = []
  x = mode_hash.select { |key, value| value == a}
  answer_array = x.keys
  return answer_array
end



# 4. Reflection