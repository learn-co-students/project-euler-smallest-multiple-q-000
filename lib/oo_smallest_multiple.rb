class SmallestMultiple
  attr_accessor :lcm

  def initialize(inp)
    @placeholder = 1
    @lcm = find_multiple(inp)
  end

  def find_multiple(inp)
    (2..inp).each do |i|
      @placeholder *= i / gcd(@placeholder, i)
    end
    @placeholder
  end

  def gcd(x, y)
    while y > 0
      x %= y
      return y if x == 0
      y %= x
    end
    x
  end
end
