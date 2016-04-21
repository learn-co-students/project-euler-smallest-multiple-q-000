# Implement your object-oriented solution here!
class SmallestMultiple
  def initialize(limit)
    @limit = limit
    @divisors = (1..limit).to_a
    @dividends = [limit]
  end

  def lcm
    @dividends.each do |dividend|
      if !@divisors.all?{|divisor| dividend %divisor == 0}
        @dividends.push(dividend + @limit)
      else
        return dividend
      end
    end
  end
end

