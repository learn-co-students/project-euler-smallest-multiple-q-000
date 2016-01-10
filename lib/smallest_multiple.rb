def smallest_multiple(multiple)
  count = 0
  value = multiple
  while (count < multiple) do
    count += 1
    lcm=false
    while (lcm==false) do
      if (value%count==0)
        lcm=true
      else
        value += multiple
        count = 1
      end
    end
  end
  return value
end