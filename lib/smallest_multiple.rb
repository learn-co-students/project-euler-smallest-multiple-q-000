# Implement your procedural solution here!

def smallest_multiple(x)
  answer = nil
  highest_multiple = x
  count = x
  until answer
    (1..highest_multiple).reverse_each do |multiple|
      break unless count % multiple == 0
      answer = count if multiple == 3
    end
    count += x
  end
  answer
end