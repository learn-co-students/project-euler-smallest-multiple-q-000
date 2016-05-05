# Implement your object-oriented solution here!
class SmallestMultiple
  def initialize(n)
    @n = n
    @counter = n + 1
  end
  def multiples?
    numbers = (1..@n)
    numbers.all? do |i|
      @counter % i == 0
    end
  end
  def lcm
    until multiples?
      @counter +=1
      multiples?
    end
    @counter
  end
end
