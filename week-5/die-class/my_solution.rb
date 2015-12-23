# Die Class 1: Numeric

# I worked on this challenge by myself.

# I spent 3 hours on this challenge.

# 0. Pseudocode

# Input: number of die sides
# Output: a random number between 1 and input die sides.
# Steps:
#Set initialize method.
  #make sure to include argument error
#Define sides method.  Have sides method return number of sides
#Define roll method. Look up rand method. Set roll to return random number between 1 and number of sides.



# 1. Initial Solution

# die = Die.new(6) #This creates a new die object with 6 sides
# die.sides # returns 6
# die.roll # returns a random number between 1 and 6

class Die
  def initialize(sides)
    @sides = sides

    if @sides < 1
      raise ArgumentError.new("Must have at least 1 side")
    end
  end

  def sides
      return @sides
  end

  def roll
    1 + rand(@sides)
  end
end



# 3. Refactored Solution

class Die
  def initialize(sides)
    @sides = sides
    if @sides < 1
      raise ArgumentError.new("Must have at least 1 side")
    end
  end

  def sides
      @sides
  end

  def roll
    1 + rand(@sides)
  end
end

# 4. Reflection


# What is an ArgumentError and why would you use one?
# It's an error raised when there is the wrong number of arguments and no exception.  It's also used when the argument is not acceptable.  In the die class we sent an argument error so that a number was un acceptable if it was less than 1.

# What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
#This was the first time I had used the rand method. It took me a little while to figure out how to use it with a variable.

# What is a Ruby class?
# A class can be thought of as the blue print for which objects are created.  For example, the charachteristics of a vehicle (horsepower, gas tank size, max speed, etc.) would be the data members for the class vehicle.  A car would be an instance of the class vehicle.

# Why would you use a Ruby class?
# They are useful because they allow you to make more complex programs.

# What is the difference between a local variable and an instance variable?
# A local variable only exists inside of a single method.  An instance varaible lives within the entire instance of an object (i.e. throughout a class).

# Where can an instance variable be used?
#Anywhere inside the object instance it was defined in. It can cross between methods, but cannot go outside of the object.