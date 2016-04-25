def smallest_multiple(limit)
  numbers = []
  i = 2
  while i <= limit
    numbers << i
    i += 1
  end
  cont = true

  starting = 0
  tempNumbers = numbers
  while starting < tempNumbers.size
    n = tempNumbers[starting]
    j = starting + 1
    while j < numbers.size
      m = numbers[j]
      if m % n == 0
        numbers[j] = numbers[j] / n
      end
      j += 1
    end
    starting += 1
  end

  tempProduct = 1
  numbers.each {|n|
    tempProduct = tempProduct * n
    }

  tempProduct

end

puts smallest_multiple(20)