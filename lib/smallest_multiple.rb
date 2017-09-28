def smallest_multiple(inp)
  placeholder = 1
  (2..inp).each do |i|
    placeholder *= i / gcd(placeholder, i)
  end
  placeholder
end

def gcd(x, y)
  while y > 0
    x %= y
    return y if x == 0
    y %= x
  end
  x
end
