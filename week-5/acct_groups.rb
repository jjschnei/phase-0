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
puts "give me 9 last names"
array_of_names = gets.chomp.split(" ").to_a

def group_students(array_of_names)
  return array_of_names.shuffle.each_slice(5).to_a
end

