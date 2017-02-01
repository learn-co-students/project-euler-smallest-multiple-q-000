def smallest_multiple(input)
  min = 1
  (2..input).each do |i|
    min *= i / gcd(min, i)
  end
  min
end

def gcd(a, b)
  a, b = b, a % b while b > 0
  a
end
