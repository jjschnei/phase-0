# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: An array of strings
# Output: One of the random strings selected at random
# Steps:
# turn the input into an instance variable so it can be used throughout the class Die
# Check to make sure the input array is not empty
  #if it is empty, return an ArgumentError
#count the array to determine the number of sides
#use a method to randomly select and return one of the strings in the array



# Initial Solution

class Die
  def initialize(labels)
    @labels = labels
    @sides = sides
    @roll = roll
    if @labels.length < 1
      raise ArgumentError.new("This array is empty! It must have at least one string.")
    end
  end

  def sides
    @sides = @labels.length
  end

  def roll
    index = rand(@sides)
    return @labels[index]
  end
end



# Refactored Solution
class Die
  def initialize(labels)
    @labels = labels
    if @labels.length < 1
      raise ArgumentError.new("This array is empty! It must have at least one string.")
    end
  end

  def sides
    @labels.length
  end

  def roll
    @labels.sample
  end
end







# Reflection

# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
#It felt very similar to me. It used pretty much the same logic, just in a different order.

# What does this exercise teach you about making code that is easily changeable or modifiable?
#It shows that simple and easy to read code will be much easier to modify than complicated code that is hard to read.

# What new methods did you learn when working on this challenge, if any?
#I learned the #sample method when refactoring.

# What concepts about classes were you able to solidify in this challenge?
#I actually still have some uncertainty. I don't fully understand how to call classes. I'm going to do some further reading.