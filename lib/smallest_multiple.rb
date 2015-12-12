# Implement your procedural solution here!

def smallest_multiple(start)
  hold = start
divide = start-1
loop do
    
  if hold % divide == 0
        divide -= 1
    else
        hold+=start 
        divide = start-1
    end

break if divide == 2

end
  return hold
end
