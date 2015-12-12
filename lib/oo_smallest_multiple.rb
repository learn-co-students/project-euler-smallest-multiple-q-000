# Implement your object-oriented solution here!
class SmallestMultiple
  def initialize(start)
    @start = start
  end

  def lcm
  hold = @start
divide = @start-1
  loop do
    if hold % divide == 0
        divide -= 1
    else
        hold+=@start
        divide = @start-1
    end
    break if divide == 2
  end
    return hold
  end


end