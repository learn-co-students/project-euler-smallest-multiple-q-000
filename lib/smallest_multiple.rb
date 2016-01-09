# Implement your procedural solution here!
def smallest_multiple(num)
  answer = num
  while num > 1
    answer = answer.lcm(num - 1)
    num -= 1
  end
  return answer
end