def numbers_to_words(num)
  ones = {
    "1" => "one",
    "2 " => "two",
    "3" => "three",
    "4"  => "four",
    "5" => "five",
    "6" => "six",
    "7" => "seven",
    "8" => "eight",
    "9" => "nine",
    "10" => "ten",
    "11" => "eleven",
    "12" => "twelve",
    "13" => "thirteen",
    "14" => "fourteen",
    "15" => "fifteen",
  }

two_digits = {
    "2" => "twenty",
    "3" => "thirty",
    "4"  => "forty",
    "5" => "fifty",
    "6" => "sixty",
    "7" => "seventy",
    "8" => "eighty",
    "9" => "ninety",
    "1" => "one hundred",
  }

  num_string = num.to_s
  first_digit = num_string[0]
  second_digit = num_string[1]

  if num < 16
    return ones[num_string]
  elsif num < 20
    num_minus_ten = num - 10
    return ones[num_minus_ten.to_s] + "teen"
  elsif num % 10 == 0
    return two_digits[first_digit]
  else
    return two_digits[first_digit] + " " + ones[second_digit]
  end
end

p numbers_to_words(3)
p numbers_to_words(12)
p numbers_to_words(16)
p numbers_to_words(20)
p numbers_to_words(33)
p numbers_to_words(99)
p numbers_to_words(100)