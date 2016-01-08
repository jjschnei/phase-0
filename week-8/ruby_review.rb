# Create a Bingo Scorer (SOLO CHALLENGE)

# I spent [#] hours on this challenge.

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
  def initialize (board)
    @bingo_board = board
    @transpose_board = @bingo_board.transpose

    # @horizontal_win = false
    # @vertical_win = false
    # @right_to_left_win = false
    # @left_to_right_win = false
  end

  def horizontal_win

  end

  def vertical_win

  end

  def right_to_left_win
    if @board

  end

  def left_to_right_win

  end





    # @vertical_win = false
    # @right_to_left_win = false
    # @left_to_right_win = false






end




# Refactored Solution






# DRIVER TESTS GO BELOW THIS LINE
# implement tests for each of the methods here:


# Reflection