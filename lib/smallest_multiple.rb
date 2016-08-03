# Implement your procedural solution here!
DENOMINATOR_ARRAYS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
def smallest_multiple(input)

  multiple = input
  until(check_denoms(multiple, input) == true)
    multiple += input
  end
  multiple


end
def check_denoms(num_to_chk, input)

  denom_arr = DENOMINATOR_ARRAYS.select do |x|
    x <= input
  end
  denom_arr.all? do |x|
    num_to_chk % x == 0
  end

end
