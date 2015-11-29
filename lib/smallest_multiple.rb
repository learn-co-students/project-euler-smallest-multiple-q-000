# Implement your procedural solution here!
def smallest_multiple(limit)
=begin
  num = 1
  limit_array = []

  (1..limit).each do |i|
    limit_array << i
  end

#brute force is way too inefficient and unnecessary
  while !limit_array.all?{ |i| num % i == 0 } #&& num != 999999999
    num += 1
  end
=end

  #Any operation taking 2 operands (of the same type) can be applied iteratively to a collection just using a fold (Enumerable#reduce in Ruby).
  #lcm = least common multiplier, method of Integer class
  (1..limit).reduce(:lcm)
end