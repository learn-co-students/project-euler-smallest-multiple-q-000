# Implement your object-oriented solution here!
class SmallestMultiple
  def initialize(prima)
    @awal = 1
    @lcm = find_multiple(prima)
  end

  def find_multiple(prima)
    (2..prima).each do |i|
      @awal = @awal * i / gcd(@awal, i)
    end
    @awal
  end
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

  def lcm
    @lcm
  end
end
