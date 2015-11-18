# Implement your object-oriented solution here!
class SmallestMultiple
  attr_reader :lcm
  def initialize(num)
    @num = num
    @lcm = smallest_multiple
  end
  def smallest_multiple
    result = 1
    (1..@num).each do |n|
      result = result * n / gcd(result, n)
    end
    result
  end

  #greatest common denominator
  #using Euclid Algorithm
  def gcd(a,b)
    while a % b != 0
      a %= b
      a,b = b,a
    end
    b
  end
end