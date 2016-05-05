# Implement your object-oriented solution here!
class SmallestMultiple
  def initialize(n)
    @n = n
  end

  def lcm
    lcm = @n
    largest_factor= @n

    (2...largest_factor).each do |i|
      lcm = least_common_multiple(lcm, i)
    end
    lcm
  end


  def prime_numbers(n)
    smallest_prime = 2
    prime_nums = [3]

    (3...n).step(2) do |i|
      prime_nums << i if prime?(prime_nums, i)
    end
    return [smallest_prime] + prime_nums
    #binding.pry
  end

  def prime?(prime_nums, number)
    return true if prime_nums.all? {|pm| number % pm > 0 }
    false
  end

  def least_common_multiple(num1, num2)
    if num2 < num1
      large = num1
      small = num2
    else
      large = num1
      small = num2
    end
    lcm = large
    prime_nums = prime_numbers(small)

    if large % small != 0
      prime_nums.each do |pn|
        while small >= pn && small % pn == 0 && large % pn == 0
          small /= pn
          large /= pn
        end
      end
      lcm *= small
    end
    return lcm
  end
end
