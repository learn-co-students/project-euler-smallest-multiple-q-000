class SmallestMultiple
  def initialize(limit)
    @limit = limit
  end

  def lcm
    smallest_multiple(@limit)
  end
end