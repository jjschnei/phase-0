# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent 4 hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #Create an array out of the string 'bingo'
  #use a method to randomly select one of the elements of the bingo array (try using #sample)
  #use a method to randomly select a number from the range 1-100 (try #rand or #sample)
  #combined the two random numbers to make teh called pair

# Check the called column for the number called.
  #assign indexes to the corresponding letters in bingo
  #iterate through the @bing_board array accessing the elements in the letter's column


# If the number is in the column, replace with an 'x'
  #if the element matches the @ran_num, replace it with an X

# Display a column to the console
 #I don't know what this means? I'm going to display the whole board.

# Display the board to the console (prettily)
  #print each of the 5 dimensions on its own line.

# Initial Solution
# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def call_letters_and_numbers
#     @rand_letter = ["B", "I", "N", "G", "O"].sample
#     @rand_num = rand(1..100)
#     p "The square is '#{@rand_letter}' #{@rand_num}."
#   end

#   def column_index
#     if @rand_letter == "B"
#       @second_index = 0
#     elsif @rand_letter == "I"
#       @second_index = 1
#     elsif @rand_letter == "N"
#       @second_index = 2
#     elsif @rand_letter == "G"
#       @second_index = 3
#     else
#       @second_index = 4
#     end
#   end

  # def check_board_and_X_number
  #     @transpose_board = @bingo_board.transpose
  #     if @transpose_board[@second_index].include?(@rand_num)
  #       @transpose_board[@second_index].map! do |num|
  #         if num == @rand_num
  #           num = "X"
  #         else
  #           num
  #         end
  #       end
  #       @bingo_board = @transpose_board.transpose
  #     end
  #   end

#   def display_board
#     p 'B | I | N | G | O'
#     p @bingo_board[0]
#     p @bingo_board[1]
#     p @bingo_board[2]
#     p @bingo_board[3]
#     p @bingo_board[4]
#   end
# end Solution

#Refactored
class BingoBoard

  def initialize(board)
    @bingo_board = board
    @transpose_board = @bingo_board.transpose
  end

  def call_letters_and_numbers
    @second_index = rand(0..4)
    @rand_letter = ["B", "I", "N", "G", "O"][@second_index]
    @rand_num = rand(1..100)
    p "The square is '#{@rand_letter}' #{@rand_num}."
    if @transpose_board[@second_index].include?(@rand_num)
      p "You have that square!"
    else
      p "Better luck next time."
    end


  end

  def check_board_and_X_number
      if @transpose_board[@second_index].include?(@rand_num)
        @transpose_board[@second_index].map! do |num|
          if num == @rand_num
            num = "X"
          else
            num
          end
        end
        @bingo_board = @transpose_board.transpose
      end
    end

  def display_board
    p 'B | I | N | G | O'
    p @bingo_board[0]
    p @bingo_board[1]
    p @bingo_board[2]
    p @bingo_board[3]
    p @bingo_board[4]
  end
end





#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.call_letters_and_numbers
new_game.check_board_and_X_number
new_game.display_board


#Reflection
#How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# I found it very difficult. I struggled breaking the problem down into small and manageable parts.

# What are the benefits of using a class for this challenge?
# Using a class allowed me to break the problem down into smaller parts (ie different methods).  I could then pass instance variables between the methods.

# How can you access coordinates in a nested array?
# Using indexes.  The first index after the array is to select the outter array.  The second index is used to select the element within the selected array.

# What methods did you use to access and modify the array?
# I used #map to acess and modify the array.

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
# I learned about #each_with_index reading the Ruby docs. You call it on an Array.  It takes two arguments, item and index.  I was hoping to somehow use this to turn the nested Array into a Hash.  The hash key would be the letters B I N G O and the values would be the numbers in those columns in an array.

# How did you determine what should be an instance variable versus a local variable?
# I just made everything an instance varaible so I could use it as needed. In retrospect, I should have probably been more thoughtful about this.  Using an instance variable probably opens the program up to more potential bugs and security issues.

# What do you feel is most improved in your refactored solution?
# I was able to get rid of a whole method by adding a tiny bit of coding to my call_letters_and_numbers method.

