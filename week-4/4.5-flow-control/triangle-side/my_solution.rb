# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(a, b, c)
  while (a > 0 && b > 0) && (c > 0) do
    if (a + b) < c
      return false
    elsif (a + c) < b
      return false
    elsif (b + c) < a
      return false
    else
      return true
    end
  end
end


#no side can be longer than the sum of the other two sides
#all numbers must be postive

