# 1 1 2 3 5 8 13 ...


def fibonacci(num)
      # base case
  if num == 1
    return 1
  elsif num == 2
    return 2
  else
    return fibonacci(num-1) + fibonacci(num-2)
  end
end

def fib_checker?(check_num)
  fib_num = 1
  while fib_num <= check_num do
    if fibonacci(fib_num) == check_num
      return "Yes, its a fib number"
    end
  fib_num +=1
  end
    return "No, it's not."
end

p fibonacci(40)
# p fib_checker?(1)
# p fib_checker?(2)
# p fib_checker?(5)
# p fib_checker?(32)
# p fib_checker?(144)

