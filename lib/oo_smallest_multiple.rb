# Implement your object-oriented solution here!
class SmallestMultiple

  attr_accessor :num

  def initialize(num)
    @num = num
  end

  def lcm
    x = num
    until (1..num).to_a.select{|y| x % y == 0 }.length == num
      x += num
    end
    x 
  end

end
