# Implement your object-oriented solution here!
class SmallestMultiple
  attr_reader :input
  def initialize(input)
    @input = input
  end

  def lcm
  counter = input
  a = (1..(input.to_i))
    until a.all? {|x| counter % x == 0} do
      counter +=(input.to_i)
    end
      return counter
  end
end
