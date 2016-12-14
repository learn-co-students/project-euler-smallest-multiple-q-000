# Implement your object-oriented solution here!

class SmallestMultiple

	attr_accessor :input

	def initialize(input)
		self.input = input
	end

	def lcm
		@lcm ||= generate_lcm
	end

	def generate_lcm

		return 1 if self.input == 1
		return 2 if self.input == 2

		i = 2
		while true

			candidate = self.input * i
			lcm = true

			j = 1
			while j < self.input

				if candidate % j != 0
					lcm = false
					j = self.input
				else
					j += 1
				end

			end

			return candidate if lcm
			i += 1
		end

	end

end