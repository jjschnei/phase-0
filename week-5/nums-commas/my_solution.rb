# Numbers to Commas Solo Challenge

# I spent 5 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input?
  # - A positive integer that will be put into a method
# What is the output? (i.e. What should the code return?)
  # - The output will be a string composed of the input integer with comma after every 3rd digit (e.g. "1,000,000").
# What are the steps needed to solve the problem?
  # - Create conditional statement to check if the input integer is under 1000. If it is, the input will be the output (make sure to turn it to a string before returning it).

  # - If the input is 1000 or higher, turn the input integer into a string and then put it in an ordered object (i.e. array).

  # - Iterate through the ordered object and add a comma after every 3 digits.

  # - Make sure the result of the iteration modifies the orered object to now include the commas.

  #- return the string as the output.
# 1. Initial Solution

# def separate_comma(i)
#   if i < 1000
#     return i.to_s
#   end
#   i = i.to_s.split()
#   integer_array = Array.new
#   integer_array = integer_array<<i
#   integer_array = integer_array.reverse

#   counter = 1
#   index = (counter - 1)
#   until counter == integer_array.length

#     integer_array.insert(index, ",") if counter % 3 == 0 #does this permanently modify the array? do i need a !

#     counter += 1
#     end # do i need this end?

#   integer_array = integer_array.reverse

#   return integer_array.join("")
# end




# 2. Refactored Solution
# - Create conditional statement to check if the input integer is under 1000. If it is, the input will be the output.

  # - If the input is 1000 or higher, turn the input integer into a string.
  #

# def separate_comma(i)
#   num_of_comma = i/3
#   split_i = i.split("")
#   if i < 1000
#     i = i.to_s
#     return i
#   else
#     index = -4
#     num_of_comma.times do |n|
#       split_i.each do insert(index, ",")
#     index -=3
#     end
#   end
#   return split_i.join("")
# end



def separate_comma(number)
string = number.to_s

if number < 1000 then
    string
    return string

elsif (string.length % 3) != 0 then
    num_of_comma = (string.length / 3)
    gnirts = string.reverse
    x = 3
    i=0
      until i == num_of_comma
        gnirts.insert(x, ",")
        i += 1
        x += 4
      end
    return gnirts.reverse

else (string.length % 3) == 0
   num_of_comma = ((string.length / 3) - 1)
   gnirts = string.reverse
    x = 3
    i=0
    until i == num_of_comma
      gnirts.insert(x, ",")
      i += 1
      x += 4
    end
  return gnirts.reverse
end
end

# 3. Reflection


# What was your process for breaking the problem down? What different approaches did you consider?
#I really sturggled getting any working solution at all. I finally got something by working backwards with coderpad.

# Was your pseudocode effective in helping you build a successful initial solution?
#It was helpful but it still took about 5 hours to get a working solution.

# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
#My initial solution did not work. It took me about 5 hour to finally get anything to work. I consider my only working solution to be my refacored solution for this assignemnt.

# How did you initially iterate through the data structure?
#I used if/elsif/else statements with unitl loops inside of them.

# Do you feel your refactored solution is more readable than your initial solution? Why?
#Yes, my initial solution would not work correclty. My refactored one is still too long, but at least it works.