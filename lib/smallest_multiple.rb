# Implement your procedural solution here!
def gcd(a, b)
while b != 0 do
a = a% b
a = a^b
b = b^a
a = a^b
end
return a
end

def lcm(a, b)
return a / gcd(a, b) * b
end

def smallest_multiple(p)
res = 1
for i in 2 ..p
res = lcm(res, i)
end
return res
end
