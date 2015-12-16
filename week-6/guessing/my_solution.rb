# Build a simple guessing game


# I worked on this challenge by myself
# I spent [#] hours on this challenge.

# Pseudocode

# Input: answer
# Output: high, low, or correct
# Steps:
#Define an instance method called GuessingGame that takes an integer called guess as inut
#Create IF/ELSE statment to compare guess with answer
 #if guess is larger than answer, it should return the symbol :high
  #if guess is lower than answer, tt shoudl return the symbol :low
  # if they are equal it should return :correct
#Define instance method GuessingGame#solved
  #have it return false unless previous guess was true



# Initial Solution

class GuessingGame
  def initialize(answer)
     @answer = answer
  end

  def guess(guess)
    @guess = guess
      if @guess > @answer
        return :high
      elsif @guess < @answer
        return :low
      else
        return :correct
      end
  end


  def solved?
    if @guess == @answer
      return true
    else
      return false
    end
  end
end




# Refactored Solution

class GuessingGame
  def initialize(answer)
     @answer = answer
  end

  def guess(guess)
    @guess = guess
      if @guess > @answer
        :high
      elsif @guess < @answer
        :low
      else
        :correct
      end
  end


  def solved?
    if @guess == @answer
      return true
    else
      return false
    end
  end
end





# Reflection


# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
#Instance varaible can represent soemthing like a real world guessed number.  The guess applies to the game your are plaing just like the variable applies to the instance of its class.  You can create methods to represent events IRL. For example, #random can simulate the random result of rolling a dice.

# When should you use instance variables? What do they do for you?
# You should use instance variables when you need to use the same piece of information across multiple methods within a class.

# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# To achieve control flow, I used conditional statements (if/elsif/else) to evaltue the truthiness and falsiness of statements. I didn't have any trouble using them, though I am sure I could do a better job of refactoring them.

# Why do you think this code requires you to return symbols? What are the benefits of using symbols?
# The benefits of symbols is that they are unique, immutable and faster as upposed to strings.