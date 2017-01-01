# Implement your object-oriented solution here!

class SmallestMultiple

  def initialize(input)
    @input = input
  end

  def lcm
    test = @input
    until (1..@input).all? { |int| test % int == 0 } do 
      test += @input
    end
    return test
  end

end