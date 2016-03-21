class SmallestMultiple
  attr_reader :lcm

  def initialize(max)
    @max, @candidate = max, max
    @divisors = (2..max)
    @lcm = smallest_multiple
  end

  def smallest_multiple
    while true
      if @divisors.all?{ |divisor| @candidate % divisor == 0 }
        return @candidate
      else
        @candidate += @max
      end
    end
  end
end