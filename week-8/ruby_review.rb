# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent 3 hours on this challenge.

# Pseudocode
# create an initialize method and setup initialize variables for:  the input board, horizonal win, vertical win, right_to_left, left_to_right.
# create a method to test for a horizontal win.
  # loop through the board array
  # if any of the inner arrays'indexes all equal x, then it's a winner
  # otherwise it is not a winner
#create a method to test for a vertical win.
  # transpose the board.
  # repeat test from horizontal win method
#create a method to test for right to left win
  #




# sample boards

# horizontal = [[47, 44, 71, 8, 88],
#               ['x', 'x', 'x', 'x', 'x'],
#               [83, 85, 97, 89, 57],
#               [25, 31, 96, 68, 51],
#               [75, 70, 54, 80, 83]]




# vertical = [[47, 44, 71, 'x', 88],
#             [22, 69, 75, 'x', 73],
#             [83, 85, 97, 'x', 57],
#             [25, 31, 96, 'x', 51],
#             [75, 70, 54, 'x', 83]]


# right_to_left = [['x', 44, 71, 8, 88],
#                  [22, 'x', 75, 65, 73],
#                  [83, 85, 'x', 89, 57],
#                  [25, 31, 96, 'x', 51],
#                  [75, 70, 54, 80, 'x']]

# [0][0] = 'x'
# [1][1] = 'x'
# [2][2] = 'x'
# [3][3] = 'x'
# [4][4] = 'x'

# left_to_right = [[47, 44, 71, 8, 'x'],
#                   [22, 69, 75, 'x', 73],
#                   [83, 85, 'x', 89, 57],
#                   [25, 'x', 96, 68, 51],
#                   ['x', 70, 54, 80, 83]]

# [0][4] = 'x'
# [1][3] = 'x'
# [2][2] = 'x'
# [3][1] = 'x'
# [4][0] = 'x'



# Initial Solution
class BingoScorer
  def initialize(board)
    @board = board
    @flat = @board.flatten
    @bingo = ["x", "x", "x", "x", "x"]
  end

  def horizontal_win
    if
      @board.any? { |bingo| bingo == @bingo}
        p "BINGO!"
    else
       p "Sorry, no horizontal."
    end

  end

  def vertical_win
    if
      @board.transpose.any? { |bingo| bingo == @bingo}
        p "BINGO!"
    else
      p "Sorry, no vertical win."
    end

  end


  def right_to_left_win
    test = []
    i = 4
    while i < 24
      if @flat[4] == 'x'
        test<<['x']
      elsif @flat[8] == 'x'
        test<<['x']
      elsif @flat[12] == 'x'
        test<<['x']
      elsif @flat[16] == 'x'
        test<<['x']
      else @flat[20] == 'x'
        test<<['x']
      end
      i += 4
    end
    test = test.flatten
    p test
    if test == @bingo
      p 'Bingo!'
    else
      p "Sorry, no left to right win."
    end
  end

  def left_to_right_win
    test = []
    i = 0
    while i < 25 do
        test<<@flat[i]
        i += 6
    end

    if test == ["x", "x", "x", "x", "x"]
        p "Bingo!"
    else
        p "Sorry, no left to right win."
    end
  end
end



# horizontal
#       board = [[47, 44, 71, 8, 88],
#               ['x', 'x', 'x', 'x', 'x'],
#               [83, 85, 97, 89, 57],
#               [25, 31, 96, 68, 51],
#               [75, 70, 54, 80, 83]]

#vertical
    # board = [[47, 44, 71, 'x', 88],
    #         [22, 69, 75, 'x', 73],
    #         [83, 85, 97, 'x', 57],
    #         [25, 31, 96, 'x', 51],
    #         [75, 70, 54, 'x', 83]]

#left to right
         # board = [['x', 44, 71, 8, 88],
         #          [22, 'x', 75, 65, 73],
         #          [83, 85, 'x', 89, 57],
         #          [25, 31, 96, 'x', 51],
         #          [75, 70, 54, 80, 'x']]

# right to left
board  = [[47, 44, 71, 8, 'x'],
         [22, 69, 75, 'x', 73],
         [83, 85, 'x', 89, 57],
         [25, 'x', 96, 68, 51],
         ['x', 70, 54, 80, 83]]

test = BingoScorer.new(board)
test.right_to_left_win
#test.left_to_right_win
#test.horizontal_win
#test.vertical_win


# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:


# Reflection
