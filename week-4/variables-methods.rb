# How do you define a local variable?
# How do you define a method?
# What is the difference between a local variable and a method?
# How do you run a ruby program from the command line?
# How do you run an RSpec file from the command line?
# What was confusing about this material? What made sense?

#4.3.1 answer:

#4.3.2 answer:

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


