# Analyze the Errors

# I worked on this challenge by myslef
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

#"Screw you guys " + "I'm going home." = cartmans_phrase

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

# def cartman_hates(thing)
#   while true
#     puts "What's there to hate about #{thing}?"
#   end
# end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# error.rb
# 2. What is the line number where the error occurs?
# 17
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# The method is missing an 'end' either on the line after the puts statement or after the end.
# 6. Why did the interpreter give you this error?
# When you create a method, you must close them out with an 'end'.  Both the cartman_hates and while methods need ends.

# --- error -------------------------------------------------------

#south_park = 3



# 1. What is the line number where the error occurs?
#36
# 2. What is the type of error message?
# main error
# 3. What additional information does the interpreter provide about this type of error?
# undefined local variable or method `south_park' for main:Object (NameError)
# 4. Where is the error in the code?
# there is no assignment for the local variable south_park.
# 5. Why did the interpreter give you this error?
# Local variables need to be assigned a value. You could add a $ or @ to make it a global or instance variable.  Or you could assign it a value. Or you could and def and end to make it a method.
#
#

# --- error -------------------------------------------------------

# def cartman()
# end

# 1. What is the line number where the error occurs?
# 56
# 2. What is the type of error message?
# syntax error
# 3. What additional information does the interpreter provide about this type of error?
# unexpected end-of-input, expecting end of input
# 4. Where is the error in the code?
# It looks like the def was left off before the method name cartman.
# 5. Why did the interpreter give you this error?
# If you are creating a new method, you must tell ruby that by writing def before the method name.

# --- error -------------------------------------------------------

# def cartmans_phrase
#   puts "I'm not fat; I'm big-boned!"
# end


# cartmans_phrase

# 1. What is the line number where the error occurs?
# 71
# 2. What is the type of error message?
# Argument Error
# 3. What additional information does the interpreter provide about this type of error?
# in `cartmans_phrase': wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# The cartmans_phrase method doesn't take a peramater as written. When it's being called on line 76, there are 3 parameters given.
# 5. Why did the interpreter give you this error?
# The number of paramaters needs to be consistent between defining a method and calling it.  This could be fixed by adding 3 paramaters to the definition, or removing the 3 words inside the ().

# --- error -------------------------------------------------------

# def cartman_says(offensive_message)
#   puts offensive_message
# end

# cartman_says(1)

# 1. What is the line number where the error occurs?
# 91
# 2. What is the type of error message?
# argument error
# 3. What additional information does the interpreter provide about this type of error?
# in `cartman_says': wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
# Same as the previous questions -- the method takes one argument but when it's called there is no argument.
# 5. Why did the interpreter give you this error?
# Ruby demands that the quantity of method arguments is consistent for a method.  Solve this ssue by adding an argument to cartman_says online 95.



# --- error -------------------------------------------------------

# def cartmans_lie(lie, name)
#   puts "#{lie}, #{name}!"
# end

# cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'kyle')

# 1. What is the line number where the error occurs?
#112
# 2. What is the type of error message?
# argument error
# 3. What additional information does the interpreter provide about this type of error?
# in `cartmans_lie': wrong number of arguments (1 for 2)
# 4. Where is the error in the code?
#  in side the () of one of the cartmans_lie methods.  They both need to have the same number of arguments.
# 5. Why did the interpreter give you this error?
#the method takes two arguments. When it's called on 116 there is only 1 argument. It works if you add a name as a 2nd argument.

# --- error -------------------------------------------------------

# puts "Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
# 131
# 2. What is the type of error message?
# type error
# 3. What additional information does the interpreter provide about this type of error?
# in `*': String can't be coerced into Fixnum
# 4. Where is the error in the code?
# The 5 and the string need to be switched.
# 5. Why did the interpreter give you this error?
#  You cannot multiply an integer by a string.  You can, however, multiply a string by an integer.

# --- error -------------------------------------------------------

# amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
# 146
# 2. What is the type of error message?
# Zero division error
# 3. What additional information does the interpreter provide about this type of error?
# in `/': divided by 0
# 4. Where is the error in the code?
# the /0.
# 5. Why did the interpreter give you this error?
# you cannot divide a number by 0.

# --- error -------------------------------------------------------

#require_relative "errors.rb"

# 1. What is the line number where the error occurs?
# 162
# 2. What is the type of error message?
# load error
# 3. What additional information does the interpreter provide about this type of error?
# tells me I can't load such file and then gives the file path.
# 4. Where is the error in the code?
# the file name
# 5. Why did the interpreter give you this error?
# No such file exists on my computer. You can change the name to error.rb.


# --- REFLECTION -------------------------------------------------------
#
### Which error was the most difficult to read?
# They all had about the same difficuty. I had to look up require_relative, so that was probably the hardest.
#### How did you figure out what the issue with the error was?
#A combination of reading the error message and then visually looking at the code for errors based on what we've learned so far.
### Were you able to determine why each error message happened based on the code?
#Yes, I was able to fix every error.
# When you encounter errors in your future code, what process will you follow to help you debug?
# The same used here. Read the error message. See if I can spot it. If not, start looking things up.

