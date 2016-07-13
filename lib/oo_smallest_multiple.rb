# Implement your object-oriented solution here!


class SmallestMultiple

  def initialize(input)
      @input = input
    end


  def lcm
    (1..@input).to_a.reduce(:lcm)
  end



end
