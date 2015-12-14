#Pseudocode
#input will be an array of names
#Make a new method that takes the array of names as an argument
#groups of 4 or 5 people comprised of the names
#figure out how many times 4 goes into the number of names.  We will need to return this many groups of names.
#Iterate through the array in a way that divides the array so there are 5 or 4 people in each group
#return array of grouped students.

def group_students(array_of_names)
  grouped_array = array_of_names.each_slice(5).to_a
  return grouped_array
end


#Refactored

def group_students(array_of_names)
  return array_of_names.each_slice(5).to_a
end

#More functionality
puts "please list the last names of students that need to be put in groups. Separate by a space."
array_of_names = gets.chomp.split(" ").to_a

def group_students(array_of_names)
  return array_of_names.shuffle.each_slice(5).to_a
end


# What was the most interesting and most difficult part of this challenge?
#It was interesting to learn a new method, split. The hardest part was not being able to fully test the code.

# Do you feel you are improving in your ability to write pseudocode and break the problem down?
#I'm improving, but still have a long ways to go.

# Was your approach for automating this task a good solution? What could have made it even better?
#I don't know what 'automating' means.  Is that to code the pseudocode?

# What data structure did you decide to store the accountability groups in and why?
#I decided to store the names in an array of arrays. I didn't put a lot of thought into it in retrospect.  I knew how to do it so I went with this structure.  It may have made more sense to use a hash with the key being the name and the value the group number.

# What did you learn in the process of refactoring your initial solution? Did you learn any new Ruby methods?
#I learned the each_slice method.
