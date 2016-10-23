# Implement your object-oriented solution here!
class SmallestMultiple
  def initialize(value)
    @value = value
    @arr = (1..@value).to_a
    @answer = nil
  end

  def lcm
    x = @arr.max * 2

    until @answer
      if divisble_by_all(x)
        @answer = x
      end
      x += @arr.max
    end

    @answer
  end

  def divisble_by_all(n)
    result = @arr.collect do |x|
      n % x == 0
    end

    result.all? { |bool| bool == true }
  end


end


def divisble_by_all(arr, n)
  result = arr.collect do |x|
    n % x == 0
  end

  result.all? { |bool| bool == true }
end
