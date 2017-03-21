def smallest_multiple(input)
  arr = (1..input).to_a
  i = input

  loop do
    if arr.all? {|num| i % num == 0}
      return i
      break
    end
    i += input
  end
  i
end
