# Implement your object-oriented solution here!

class SmallestMultiple
  def initialize(num)
    @num = num
  end

  def lcm
  	x = @num

  	loop do
  		if (1..@num).all? { |divisor| x % divisor == 0 }
    		return x
  		else
    		x += 1
  		end
    end
  end
end
