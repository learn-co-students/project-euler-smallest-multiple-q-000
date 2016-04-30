# Implement your object-oriented solution here!
class SmallestMultiple
	def initialize(limit)
		@limit = limit
	end
	def lcm
		increment = @limit
		while !(1..@limit).all?{|div| increment % div == 0}
			increment += @limit
		end
		return increment
	end
end
