# Implement your object-oriented solution here!
class SmallestMultiple
  def initialize(input)
    @input = input
  end

  def lcm
    num = @input

    while true
      if isDivisible(num)
        return num
      else
        num += @input
      end
    end
  end

  def isDivisible(num)
    divisible = true

    (2..@input).each {|divisor|
      if !(num % divisor == 0)
        divisible = false
      end
    }

    return divisible
  end

end