# Implement your object-oriented solution here!
class SmallestMultiple
  def initialize(limit)
    @limit = limit
  end

  def lcm
    (1..@limit).reduce(:lcm)
  end

end