# Implement your object-oriented solution here!
class SmallestMultiple
  def initialize(num)
    @num = num
  end
  def primes(n)
    prime = []
    i = 2
    while i <= n
      if n%i==0
        prime.push(i)
        n = n/i
      else
        i += 1
      end
    end
    return prime
  end
  def lcm
    lcm_primes = []
    answer = 1
    num = @num
    while num > 1
      num_primes = primes(num)
      lcm_primes2 = lcm_primes.dup
      num_primes.each do |np|
        if lcm_primes2.include?(np)
          lcm_primes2.delete_at(lcm_primes2.index(np))
        else
          lcm_primes.push(np)
        end
      end
      num -=1
    end
    lcm_primes.each do |prime|
      answer *=prime
    end
    return answer
  end
end
