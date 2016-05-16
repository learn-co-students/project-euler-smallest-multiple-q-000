# Implement your procedural solution here!

def smallest_multiple(number)
  multiple = nil
  iteration = number
  until multiple do
    if (1..number).all? {|divisor| iteration % divisor == 0 }
      multiple = iteration
    end
    iteration += number
  end
  multiple
end
