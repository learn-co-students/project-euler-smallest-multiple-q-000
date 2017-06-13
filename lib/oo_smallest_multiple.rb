# Implement your object-oriented solution here!
class SmallestMultiple

  def initialize(int)
    @int = int
  end

  def lcm
    num = 1
    while (true)
      for i in 1..@int
        if (num % i != 0)
          num += 1
          break
        elsif (i == @int)
          return num
        end
      end
    end
  end

end
