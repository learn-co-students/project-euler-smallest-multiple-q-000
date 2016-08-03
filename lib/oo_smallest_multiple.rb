# Implement your object-oriented solution here!
DENOMINATOR_ARRAY = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
class SmallestMultiple

  def initialize(input)

    @denom_arr = DENOMINATOR_ARRAY.select do |x|
      x <= input
    end
    @input = input
  end

  def lcm

    multiple = @input
    until(check_denoms(multiple) == true)
      multiple += @input
    end
    multiple

  end

  def check_denoms(num_to_chk)

    @denom_arr.all? do |x|
      num_to_chk % x == 0
    end
  end

end
