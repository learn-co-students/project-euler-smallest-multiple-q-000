# Implement your procedural solution here!
def smallest_multiple(limit)
  divisors = (1..limit).to_a
  dividends = [limit]
  dividends.each do |dividend|
    if !divisors.all?{|divisor| dividend %divisor == 0}
      dividends.push(dividend + limit) 
    else return dividend
    end
  end
end
