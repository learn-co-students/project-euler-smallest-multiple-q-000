# Implement your procedural solution here!

=begin

1 - 1
2 - 2
3 - 3
4 - 2*2   (2^2)
5 - 5
6 - 2*3
7 - 7
8 - 2*2*2 (2^3)
9 - 3*3   (3^2)
10 - 2*5

result = 2^3*3^2*5*7 = 2520

def smallest_multiple(input)
  num = 1
	range = (2..input)

loop do
  multiple = num * input
  return multiple if range.all?{ |i| multiple % i == 0 }
   num += 1
end
end

=end





def smallest_multiple(input)
    (1..input).to_a.reduce(:lcm)

end
