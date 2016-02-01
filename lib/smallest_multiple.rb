def smallest_multiple(input)

# Step 1: for numbers 2 through input, find prime factors of each 
# When the last prime factor of each number is found, add 1 to the progress array

  progress = []
  n = 2
  while n <= input
  
    i = 2
    current = n
    loop do
      
      if current % i == 0
        current /= i
        progress << i

        if current == 1
          progress << 1
          break
        end

        i = 0
      end 

      if i == 2
        i += 1
      else
        i += 2
      end

    end 

    n += 1
  end

# Step 2: track progress array by its consecutive repeated numbers

  powers = []
  j = 0
  k = 0
  while j < progress.length

    if progress[j] != progress[j - 1]
      powers << [progress[j], 1]
    end

    if progress[j] == progress[j - 1]
      powers[k][1] += 1
    end

    if progress[j] != progress[j + 1]
      k += 1 
    end

    j += 1
  end

# Step 3: see if prime factors are repeated anywhere
# Keep only one set of each prime factor
# If one factor has a higher power than it did elsewhere, keep the higher power set
# rather than deleting, duplicate factors can be changed to 1 so as to not affect product

  l = 0
  result = 1
  while l < powers.length

    m = l + 1
    while m < powers.length
      
      if powers[l][0] == powers[m][0]
        if powers[l][1] > powers[m][1]
          powers[m][0] = 1
        else
          powers[l][0] = 1
        end
      end


      m += 1
    end

    result *= (powers[l][0] ** powers[l][1])

    l += 1
  end

  return result
end