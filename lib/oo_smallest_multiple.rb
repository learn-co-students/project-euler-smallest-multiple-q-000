# Implement your object-oriented solution here!

class SmallestMultiple


  def initialize(number)
    @number = number 
    @answer = number 
  end

  def lcm
    i = 1 
    until i == @number 
      if @answer % i == 0 
        i += 1 
      else
        i = 1 
        @answer += @number 
      end
    end
    @answer
  end

end






