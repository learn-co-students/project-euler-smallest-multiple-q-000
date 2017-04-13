# Implement your procedural solution here!
def smallest_multiple(num)
  x = num
  until (1..num).to_a.select{|y| x % y == 0 }.length == num
    x += num
  end
  x 
end
