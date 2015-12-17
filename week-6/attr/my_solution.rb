#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input: my name
# Output: a salutation that includes my name
# Steps:
# Create a NameData class
  #add name as a attr_writer
  #initialize @name
#Create a Greetings class
  #create initialze method that calls an instance of NameData
  #create method that returns saluation with my name in it.

class NameData
  #attr_writer :name

  def name_method
    @name = "Jeff"
  end
end


class Greetings
  def initialize
    @student_name = NameData.new
  end

  def salutation
    "Hello #{@student_name.name_method}, How wonderful to see you today."
  end

end





# Reflection

# What is a reader method?
# It's a method that returns an instance varible. It can be written a few ways:
# attr_reader :venue
# def venue
#   @venue
# end


# What is a writer method?
# It's a method that sets the value of an instance variable. This is used when the value of the instance variable may need to be changed.  It can be written like this:
# attr_writer :price
#
# def price
#   @price = price

# What do the attr methods do for you?
# They are used for readability and efficiency. It's also much quicker to make them.

# Should you always use an accessor to cover your bases? Why or why not?
# No, you should only use one if you need to. It makes your program vulnerable to bugs and attacks to leave a variable changeable.

# What is confusing to you about these methods?
# I'm still confused about how to call them and how to pass information between them.