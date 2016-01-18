# Implement your procedural solution here!
def smallest_multiple(input)
  counter = input
  a = (1..(input.to_i))
  until a.all? {|x| counter % x == 0} do
    counter +=(input.to_i)
  end
    return counter
end