# Implement your object-oriented solution here!
class SmallestMultiple
  def initialize(div)
    @div = div
  end

  def lcm
    num = 1
    while (true)
      for i in 1..@div
        if (num % i != 0)
          num += 1
          break
        elsif (i == @div)
          return num
        end
      end
    end
  end
end