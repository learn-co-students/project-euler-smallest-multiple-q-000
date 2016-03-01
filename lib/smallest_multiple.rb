# Implement your procedural solution here!

def smallest_multiple(number)
  i = 1
  answer = number 

  until i == number
    if answer % i == 0 
      i += 1 
    elsif number % i != 0
      i = 1
      answer += number 
    end
  end
  answer 
end