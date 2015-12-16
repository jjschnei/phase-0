# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2],
        ["inner",
        ["eagle", "par",
        ["FORE", "hook"]]]]

# attempts:
# ============================================================
#p array[3][1]
#p array[1][1][2]
p array[1][1][2][0]



# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer:
        {inner:
          {"almost" => {3 => "congrats!"}
            }
          }
  }

# attempts:
# ============================================================
#p hash{outer:}{inner:]{"almost"}{3}
# p hash{:outer}{:inner}{almost}{3}
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array:
              ["array",
                {hash:
                  "finished"}]}

# attempts:
# ============================================================

p nested_data[:array][1][:hash]

# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

# number_array = [5, [10, 15], [20,25,30], 35]

# number_array.each do |num|
#   if num.is_a? Integer
#     p num = num + 5
#   end
# end

number_array = [5, [10, 15], [20,25,30], 35]
=begin
number_array.each do |element|
  if element.is_a? Integer
    p element = element+5
  else
    element.each do |nested|
      p nested +=5
    end
  end
end
=end
#p number_array.flatten.each {|num| num+5}
# p number_array.flatten
number_array.flatten.each {|num| p num+5}

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

# p startup_names.flatten +"ly"
p startup_names.flatten.each {|word| word.concat("ly")}


# #Reflection
# What are some general rules you can apply to nested arrays?
# You can access nested arrays using indexes. We also found it easier to see the nested arrays if we put each array on a new line.

# What are some ways you can iterate over nested arrays?
# We only used the #each method.  Sometimes you may have to use it twice in a row.

# Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
#On the Bonus challange we remebered the #flatten method.  I think using this method kind of skirts the point of this assignement.  We went back and tested it on release 3 as a refactoring option. It does work quite well at getting the correct answer.