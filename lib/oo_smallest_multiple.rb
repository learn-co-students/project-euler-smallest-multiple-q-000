# Implement your object-oriented solution here!
class SmallestMultiple
  attr_reader :lcm
  def initialize(num)
    @num = num
    @lcm = smallest_multiple
  end
  def smallest_multiple
    (1..@num).inject(1) { |res, el| (el*res)/res.gcd(el)}
  end
end
