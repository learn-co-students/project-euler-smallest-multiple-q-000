class SmallestMultiple
  def initialize (input)
    @input = input
  end
  def input=(input)
    @input = input
  end
  def input
    @input
  end
  def lcm
  (1..1000000000).each do |x|
     count = 0
    (1..@input).each do |y|
      if x % y != 0
        count += 1
      end
    end
    if count == 0
      return x
      break
    end
  end

  
end

end
