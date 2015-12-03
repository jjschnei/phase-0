#4.3.1 Return a Formatted Address:  https://github.com/jjschnei/phase-0/blob/master/week-4/address/my_solution.rb

#4.3.2 Defining Math Methods: https://github.com/jjschnei/phase-0/blob/master/week-4/math/my_solution.rb

# Full name greeting: Write a program that asks for a person's first name, then middle, then last. Finally, it should greet the person using their full name.

puts "What's your first name?"
first = gets.chomp
puts "What's your midle name?"
middle = gets.chomp
puts "What's your last name?"
last = gets.chomp
puts "I'll address you as " + first + " " + middle + " " + last + "."

# Bigger, better favorite number: Write a program that asks for a person's favorite number. Have your program add 1 to the number, and then suggest the result as a bigger and better number.

puts "Hey, what's your favorite number?"
answer = gets.chomp
answer_int = answer.to_i
sum = answer_int + 1
sum_string = sum.to_s
puts "That's cool and all, but I think " + sum_string + " is a bigger and better number."

# # How do you define a local variable?
# You assign it to something using the = symbol.  For example, local_var = value.
# # How do you define a method?
# you write def and then your method name.  For example, def my_method.  You have the option to add parameters at the end.
# # What is the difference between a local variable and a method?
# You can use the same method over and over again throughout your .rb file.  A local variable only exists inside of a method.
# # How do you run a ruby program from the command line?
# using the command ruby and then the file name.
# # How do you run an RSpec file from the command line?
# using the rspec command followed by the file name.
# # What was confusing about this material? What made sense?
# I stumbled a bit on converting integers to strings.  I also initially struggled using PSpec. If you don't name your files exactly like the instructions and also create separate folders, it doesn't work. Everything else was review.

