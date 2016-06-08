# Implement your procedural solution here!
def smallest_multiple(n)
  (2..n).inject { |result, i| result.lcm(i) }
end
