def smallest_multiple(max)
  candidate = max
  divisors = (2..max)

  while true
    if divisors.all?{ |divisor| candidate % divisor == 0 }
      return candidate
    else
      candidate += max
    end
  end
end


