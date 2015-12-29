def smallest_multiple(limit)
  smallest_multiple_factors = []
  smallest_multiple = 1
  limit.downto(2) do |number|
    factors = prime_factors(number).sort
    factors.uniq.each do |factor|
      if smallest_multiple_factors.count(factor) < factors.count(factor)
        smallest_multiple_factors<<Array.new(factors.count(factor)-smallest_multiple_factors.count(factor),factor)
        smallest_multiple_factors = smallest_multiple_factors.flatten
      end
    end
  end
  smallest_multiple_factors.each {|factor| smallest_multiple = smallest_multiple * factor}
  smallest_multiple
end

def prime_factors(number)
  prime_factors = []
  counter = number
  if is_prime?(number)
    prime_factors = [number]
    return prime_factors
  end
  while number != 1
    (2...counter).each do |factor|
      if number%factor == 0 && is_prime?(factor)
        prime_factors << factor
        number = number/factor
      end
    end
  end
  prime_factors
end

def is_prime?(number)
  return true if number == 2
  (2...number).each do |factor|
    if number%factor == 0
      return false
    end
  end
  return true
end