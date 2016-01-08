# I worked on this challenge with Thomas Mashuang
# This challenge took me 1 hour.


# Pseudocode
# declare fizzbuzz array variable that's empty
# iterate through each element of the array
# if element if is divisible by 15 replace with fizzbuzz
# if divisible by 5 replace with buzz
# if divisible by 3 replace with fizz
# return modified array




# Initial Solution

# def super_fizzbuzz(array)
#   fizz_buzz = []
#   i = 0
#   while (i < array.length)
#     if array[i] % 15 == 0
#       fizz_buzz << "FizzBuzz"
#     elsif array[i] % 5 == 0
#       fizz_buzz << "Buzz"
#     elsif array[i] % 3 == 0
#       fizz_buzz << "Fizz"
#     else
#       fizz_buzz << array[i]
#     end
#     i += 1
# end
#   print fizz_buzz
# end

# super_fizzbuzz([3,1,2,3,4,5,6,7,15])


# Refactored Solution

def super_fizzbuzz(fizzbuzzed)
  fizzbuzzed.collect! do |i|
    if i % 15 == 0
     "FizzBuzz"
    elsif i % 5 == 0
      "Buzz"
    elsif i % 3 == 0
      "Fizz"
    else
      i
    end
  end
  print fizzbuzzed
end

super_fizzbuzz([3,1,2,3,4,5,6,7,15])


# Reflection

## What concepts did you review or learn in this challenge?
# It was really helpful to review how to iterate over an array.

## What is still confusing to you about Ruby?
# Classes and iterating through multi-dimentional arrays/hashes.

## What are you going to study to get more prepared for Phase 1?
# I'm going to re-read Learn to Program and do as many of these review challenges as possible.