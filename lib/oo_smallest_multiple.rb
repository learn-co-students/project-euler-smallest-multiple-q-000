# Implement your object-oriented solution here!
class SmallestMultiple
  def initialize(n)
    @n = n
  end

  def lcm
    (2..@n).inject { |result, i| result.lcm(i) }
  end
end
