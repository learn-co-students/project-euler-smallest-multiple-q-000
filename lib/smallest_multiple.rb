# Implement your procedural solution here!
def smallest_multiple(input)
  num = input

  while true
    if isDivisible(num, input)
      return num
    else
      num += input
    end
  end

end

def isDivisible(num, input)
  divisible = true

  (2..input).each {|divisor|
    if !(num % divisor == 0)
      divisible = false
    end
  }

  return divisible
end

