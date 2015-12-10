# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}


#%r/\w/
# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source.select { |v| v =~ /#{thing_to_find}/}
end

def my_hash_finding_method(source, thing_to_find)
  output_array = []
  source.select! {|k, v| v == thing_to_find}
  source.each_key{|key| output_array<<key}
  return output_array
end

# Identify and describe the Ruby method(s) you implemented.

# .select -- Each element of an array is run through a block one time.  If the element returns a true value it is added to a new array.  I used this method to search through an array of strings, looking for strings that contained a particular letter.  If the string had the parameter letter, I wanted to select it and put it in a new array.

# .select! -- Calls a block for eacy key/value pair in a hash.  A new hash is created and filled only with the key/value pairs that evaluted to true in the block.  I used this to search through a hash to find only pets of a certain age.  I used the bang because I wanted to modify the origional hash to only contain pets of the certain age represented by the thing_to_find variable.

# regexp -- Regular expresions are patterns that describe the content of a string. They are used for testing whether a string contains a given pattern, or extracting the portions that match.  The string you are searching for goes between backslashes: /.../ There are several ways to express regexps:
  #   ~=
  #   .match()
  #   Regexp.new
  #   %r{}

# each_key -- calls a block once for each key in a hash, passing the key as a paramater. I used it to find every key in a hash and then push all of the keys into an empty array.
# <<

# Person 2
def my_array_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_modification_method!(source, thing_to_modify)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 3
def my_array_sorting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_sorting_method(source)
   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Person 5
def my_array_splitting_method(source)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

def my_hash_splitting_method(source, age)
  source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
#
#
#
#