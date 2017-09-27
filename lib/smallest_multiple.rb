require 'pry'


  def smallest_multiple(mult)
    i = 1
    (2..mult).each do |m|
      i *= m / common(i, m)
    end     
    i
  end  

  def common(x, y)
    while y > 0
      x %= y
      return y if x == 0
      y %= x
    end  
    x
  end  