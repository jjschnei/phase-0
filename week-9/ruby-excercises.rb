def angry_boss
  p "WHAT DO YOU WANT?!"
  input = gets.chomp
  p "WHADA MEAN YOU \"#{input}\"?!? YOU'RE FIRED"
end


def deaf_grandma
  p "Hi, Sonny"
  input = gets.chomp
    if input == "BYE"
      p "BYE DEAR"
      exit
    elsif input == input.upcase
      year = 1950 - rand(20)
      p "NO, NOT SINCE " + year.to_s + '!'
    else
      p "HUH, SPEAK UP SONNY!"
    end
end

def sortying_array
  p "give me some strings to sort!"
  input = gets.chomp.split(" ").sort
  p input
end

def roman_numerals(num)
  ones = { 1 => "I",
         2 => "II",
         3 => "III",
         4 => "IIII",
         5 => "V",
         6 => "VI",
         7 => "VII",
         8 => "VIII",
         9 => "VIIII",
        }



tens = { 10 => "X",
         50 => "L",
         100 => "C",
         500 => "D",
         1000 => "M",
        }

  if num < 10
    p ones[num]
  elsif num < 20


  end


end

# roman_numerals(4)

2%5 = 2
4%5= 4

def old_school_roman_numerals(num)
  roman = ''

  roman << 'M' * (num / 1000)
  roman << 'D' * (num % 1000 / 500)
  roman << 'C' * (num % 500 / 100)
  roman << 'L' * (num % 100 / 50)
  roman << 'X' * (num % 50 / 10)
  roman << 'V' * (num % 10 / 5)
  roman << 'I' * (num % 5 / 1)

  roman
end

p old_school_roman_numerals(1999)