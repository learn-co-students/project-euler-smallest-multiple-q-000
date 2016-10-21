# Implement your procedural solution here!
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
def lcm(num)
  lcm_primes = []
  answer = 1
  while num > 1
    num_primes = primes(num)
    lcm_primes2 = lcm_primes.dup
    num_primes.each do |np|
#      puts "checking #{np}"
      if lcm_primes2.include?(np)
        lcm_primes2.delete_at(lcm_primes2.index(np))
#        puts "lcm_primes if #{lcm_primes}"
#        puts "lcm_primes2 if #{lcm_primes2}"
      else
        lcm_primes.push(np)
#        lcm_primes2.push(np)
#        puts "adding #{np}"
#        puts "lcm_primes #{lcm_primes}"
#        puts "lcm_primes2 else #{lcm_primes2}"
      end
    end
    num -=1
  end
  lcm_primes.each do |prime|
    answer *=prime
  end
  return answer
end
def smallest_multiple(num)
  lcm(num)
end
