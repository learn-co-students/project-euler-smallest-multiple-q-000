# Implement your procedural solution here!
def smallest_multiple(input)
  test = input
  until (1..input).all? { |int| test % int == 0 } do 
    test += input
  end
  return test
end
