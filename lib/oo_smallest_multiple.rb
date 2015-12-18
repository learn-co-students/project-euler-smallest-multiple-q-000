# Implement your object-oriented solution here!

require_relative 'smallest_multiple'

class SmallestMultiple
  attr_accessor :lcm
  
  def initialize(input=1)
    @lcm = smallest_multiple(input)
  end
  
end