# Implement your procedural solution here!

def smallest_multiple(value)
  arr = (1..value).to_a
  x = arr.max * 2
  answer = nil
  
  until answer
    if divisble_by_all(arr,x) == true
      answer = x
      break
    end
    x += arr.max
  end

  answer
end

def divisble_by_all(arr, n)
  result = arr.collect do |x|
    n % x == 0
  end

  result.all? { |bool| bool == true }
end
