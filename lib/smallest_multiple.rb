# Implement your procedural solution here!
def smallest_multiple(input)
  placeholder = 1
  (2..input).each do |i|
    placeholder *= i / gcd(placeholder, i)
  end
  placeholder
end

def gcd(a, b)
  while b > 0
    a %= b
    return b if a == 0
    b %= a
  end
  a
end 
