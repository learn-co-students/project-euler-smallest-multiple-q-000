class SmallestMultiple
  def initialize(multiple_int)
    @multiple = multiple_int
  end

  def multiple_getter()
    @multiple
  end

  def multiple_setter(multiple_int)
    @multiple = multiple_int
  end

  def lcm()
    count = 0
    value = multiple_getter()
    while (count < multiple_getter()) do
      count += 1
      lcm=false
      while (lcm==false) do
        if (value%count==0)
          lcm=true
        else
          value += multiple_getter()
          count = 1
        end
      end
    end
    return value
  end
end