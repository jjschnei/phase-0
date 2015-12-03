# Factorial

# I worked on this challenge with: Eddie Glenn.


# Your Solution Below
def factorial(number)
  sum = 1
  (1..number).each do |number|
    sum *= number
  end
  sum
end

# array = []
#   x = 0
#   while x < number
#     array.push(x)
#     x = x + 1
#     # return array
#   end
#   total = 1
#   array.each do |x|
#     total = x * total
#   end
#   return total

# take an number
# verify that number is positive integer
# create an array of numbers from 1 to that number
# multiply all numbers in the array
# return the product that that multiplication