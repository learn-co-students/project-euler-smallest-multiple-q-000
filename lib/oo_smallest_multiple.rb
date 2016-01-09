# Implement your object-oriented solution here!
class SmallestMultiple
  def initialize(num)
    @num = num
  end

  def lcm
    answer = @num
    while @num > 1
      answer = answer.lcm(@num - 1)
      @num -= 1
    end
    return answer
  end
end