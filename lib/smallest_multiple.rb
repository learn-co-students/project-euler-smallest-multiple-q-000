# Implement your procedural solution here!
def smallest_multiple(num)
  result = 1
  (1..num).each do |n|
    result = result * n / gcd(result, n)
  end
  result
end

#greatest common denominator
#using Euclid Algorithm
def gcd(a,b)
  while a % b != 0
    a %= b
    a,b = b,a
  end
  b
end
