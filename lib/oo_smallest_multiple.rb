class SmallestMultiple

  attr_accessor :answer, :count
  attr_reader :highest_multiple

  def initialize(highest_multiple)
    @answer = nil
    @highest_multiple = highest_multiple
    @count = highest_multiple
  end

  def lcm
    until answer
      (1..highest_multiple).reverse_each do |multiple|
        break unless count % multiple == 0
        @answer = count if multiple == 3
      end
      @count += highest_multiple
    end
    answer
  end


end