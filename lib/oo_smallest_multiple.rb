# Implement your object-oriented solution here!
class SmallestMultiple

def initialize(p)
  @p = p
end

def gcd(a, b)
while b != 0 do
a = a% b
a = a^b
b = b^a
a = a^b
end
return a
end

def lcmd(a, b)
return a / gcd(a, b) * b
end

def lcm
res = 1
for i in 2 ..@p
res = lcmd(res, i)
end
return res
end
end

SmallestMultiple.new(5).lcm
