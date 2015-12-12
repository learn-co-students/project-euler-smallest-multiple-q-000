# Implement your procedural solution here!
def smallest_multiple(num)
  (1..num).inject(1) { |res, el| (el*res)/res.gcd(el)}
end
