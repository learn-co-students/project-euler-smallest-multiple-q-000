# Implement your procedural solution here!
def smallest_multiple(goal)
  goal_factors = (2..goal).to_a
  #split goal_factors into primes and not primes
  lcm_factors = goal_factors.select{|a| is_prime?(a)}
  remaining_factors = goal_factors.reject{|a| is_prime?(a)}
  #goal_factors will now become an array of pf arrays
  arrays_of_prime_factors = remaining_factors.map{|a| prime_factors(a)}
  arrays_of_prime_factors.each do |group|
    temp = Array.new(lcm_factors)
    group.each do |prime|
      if temp.include?(prime)         #if lcm_factors already has this prime
        here = temp.rindex(prime)     #where is it?
        temp.slice!(here)             #take it out, to count it only once
      else                           #if lcm_factors does NOT have this prime
        lcm_factors.push(prime)       #add that prime
      end
    end
  end
  return lcm_factors.reduce(1,:*)
  return "#{lcm_factors} :#{lcm_factors.reduce(1,:*)}"

end

def prime_factors(target)
  #pf: prime factors
  pf = Array.new()
  i=2
  while target>=2
    if target%i==0 && is_prime?(i)
      pf.push(i)
      target = target/i
      i=2
    else
      i+=1
    end
  end
  return pf
end

def is_prime?(target)
  ##TINY PRIMES ONLY!! (<50)
  if target==2 || target==3 || target==5
    return true
  elsif target==1 || target==4
    return false
  elsif target%2==0 || target%3==0 ||target%5==0
    return false
  end

  candidate=5
  while candidate<target && target%candidate!=0
    candidate+=1
  end

  if target%candidate==0
    return true
  end
  return false
end
