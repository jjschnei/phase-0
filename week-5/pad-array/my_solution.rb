# Pad an Array

# I worked on this challenge with Gary

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?
# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?

# What is the input? Array, positive integer/minimim array size, optional argument to to replace empty array length if array size if </does not meet mimimum
# What is the output? (i.e. What should the code return?) Retruns Array that is mimimum array size
# What are the steps needed to solve the problem?
#1. Check array.length and compare with min_size input
#2. If array difference < 1 retrun original array
#3. If array difference >= 1 add value to meet min_size
#4. push new pad value to end of array to be = to min_size
#5. Replace old array


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    return array
  else
    until array.length >= min_size
      array<<value
    end
      return array
  end
  pad! {array.length >= min_size}
end


def pad(array, min_size, value = nil) #non-destructive
  new_array = array.clone
  if new_array.length >= min_size
      return new_array
    else
      until new_array.length >= min_size
        new_array << value
      end
      return new_array
  end
end






# 3. Refactored Solution


def pad!(array, min_size, value = nil) #destructive
  if array.length >= min_size
    return array
  else
    until array.length >= min_size
      array<<value
    end
      return array
  end
end


def pad(array, min_size, value = nil) #non-destructive
  new_array = array.clone
  if new_array.length >= min_size
      return new_array
    else
      until new_array.length >= min_size
        new_array << value
      end
      return new_array
  end
end



# 4. Reflection

# Were you successful in breaking the problem down into small steps?
#Yes, making the pseudocode was much easier than making the actual code.

# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
#No, we ran into a huge amount of difficulty solving the non-destructive method. We didn't know about the clone method.

# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
#The destructive method was quick.  We got stuck on the second one.

# When you refactored, did you find any existing methods in Ruby to clean up your code?
#No. We ran out of time trying to solve the initial solution.

# How readable is your solution? Did you and your pair choose descriptive variable names?
#It's pretty readable.  We could have been better at naming though.

# What is the difference between destructive and non-destructive methods in your own words?
#Destructive methods modify the arguments.  Non-destructive methods do not modify any of the method's arguments.



