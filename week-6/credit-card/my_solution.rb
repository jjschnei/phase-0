# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: number to test
# Output: true or false
# Steps:
# Create initialize method
#  create instance variable
# Check to make sure input is the correct length -- .to_s.length == 16.     Creat Argument error if not.
# Create new method to double every other number
  #create new array filled with the 16 integers
  #Iterate through the array and double ever odd integer
#Create new method to seperate double digit numbers
  #iterate through array for numbers larger than 9
  #turn into a string
  #split into individual numbers
  #flatten the array
#Create new method to add numbers
  #sum all of the numbers in the array
# Create new method to check
  #check if sum is mod 10== 0
  #return true or false

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
  def initialize(num)
    if num.to_s.length != 16
      raise ArgumentError.new("Number must be 16 digits")
    else
      @num = num
    end
  end

  def double
    @num = @num.to_s.split("")
    @num = @num.map.with_index do |x, y|
      if (y + 1).odd?
        x.to_i * 2
      else
        x.to_i
      end
    end
  end

  def separate
    @arr = @num.map do |num|
      if num > 9
        num.to_s.split("").map {|x| x.to_i }
      else
        num
      end
    end
  end

  def sum
    @arr.flatten!
    @sum = @arr.inject(:+)
  end

  def check_card
    if @sum % 10 == 0
      return true
    else
      return false
    end
  end

end





# Refactored Solution
class CreditCard
  def initialize(num)
    if num.to_s.length != 16
      raise ArgumentError.new("Number must be 16 digits")
    else
      @num = num
    end
  end

  def double
    @num_array = @num.to_s.split("")
    @num_array = @num_array.map.with_index do |value, index|
      if (index + 1).odd?
        value.to_i * 2
      else
        value.to_i
      end
    end
  end

  def separate
    @arr_2 = @num_array.map do |num|
      if num > 9
        num.to_s.split("").map {|split_num| split_num.to_i }
      else
        num
      end
    end
  end

  def sum
    @sum = @arr_2.flatten!.inject(:+)
  end

  def check_card
    if @sum % 10 == 0
      true
    else
      false
    end
  end

end


# # Reflection
# What was the most difficult part of this challenge for you and your pair?
# There seems to be an error in the rspec.  We tested our code extensively on coderpad and it works. However, we get 2 failures on rspec.

# What new methods did you find to help you when you refactored?
# #inject which allows you to add an operator inside of an array and then find the result. We injected a + into our array to sum it.

# What concepts or learnings were you able to solidify in this challenge?
# This challenge helped to solidify my understanding of class methods and how to call them.