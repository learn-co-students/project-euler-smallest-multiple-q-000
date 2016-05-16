# Implement your procedural solution here!
def gcd(a1, a2)
  while a2 > 0
    a1 = a1 % a2
    if a1 == 0
      return a2
    end
    a2 = a2 % a1
  end
  a1
end
def smallest_multiple(prima)
  awal = 1
  (2..prima).each do |i|
    awal = awal * i / gcd(awal, i)
  end
  awal
end
