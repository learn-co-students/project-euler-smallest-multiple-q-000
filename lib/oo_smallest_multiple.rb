class SmallestMultiple
  attr_reader :lcm

  def initialize(input)
    @lcm = smallest_multiple(input)
  end

  def smallest_multiple(input)
    min = 1
    (2..input).each do |i|
      min *= i / bcd(min, i)
    end
    min
  end

  def bcd(a, b)
    a, b = b, a % b while b > 0
    a
  end
end
