# Implement your object-oriented solution here!

class SmallestMultiple
  attr_accessor :number

  def initialize(number)
    self.number = number
  end

  def lcm
    multiple = nil
    iteration = self.number
    until multiple do
      if (1..number).all? {|divisor| iteration % divisor == 0 }
        multiple = iteration
      end
      iteration += self.number
    end
    multiple
  end

end
