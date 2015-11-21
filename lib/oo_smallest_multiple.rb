# Implement your object-oriented solution here!
class SmallestMultiple
  def initialize(parameter)
    @parameter = parameter
  end

  def lcm
    index = product_of_lesser_primes(@parameter)
    jump = index
    multiple = false
    until multiple
      multiple = (2..@parameter).all? { |i| index % i == 0}
      index += jump
    end
    index - jump
  end

  def is_prime?(number)
    (2..number - 1).all? { |i| number % i != 0}
  end

  def product_of_lesser_primes(number)
    product = 1
    (2..number).each do |i|
      if is_prime?(i)
        product *= i
      end
    end
    product
  end
end