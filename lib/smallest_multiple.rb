# Implement your procedural solution here!
def multiples?(n, counter)
  numbers = (1..n)
  numbers.all? do |i|
    counter % i == 0
  end
end

def smallest_multiple(n)
  counter = n + 1
  until multiples?(n, counter)
    counter +=1
    multiples?(n, counter)
  end
  counter
end
