# Count Between

# I worked on this challenge [by myself, with: ].

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below
#   count = Array.new
#   list_of_integers.sort!

#   list_of_integers.each do |x|
#     if x <= upper_bound
#       count[]<<x
#     elsif x >= lower_bound
#       count[]<<x
#   end

#   count.length

def count_between(list_of_integers, lower_bound, upper_bound)
  list_of_integers.count do |x|
   upper_bound >= x && x >= lower_bound
   #(lower_bound..upper_bound).include?(x)
  end
end