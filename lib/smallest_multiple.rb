# Implement your procedural solution here!
def smallest_multiple(int)
  num = 1
  while (true)
    for i in 1..int
      if (num % i != 0)
        num += 1
        break
      elsif (i == int)
        return num
      end
    end
  end
end
