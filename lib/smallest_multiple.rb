# Implement your procedural solution here!

def smallest_multiple(input)

	return 1 if input == 1
	return 2 if input == 2

	i = 2
	while true

		candidate = input * i
		lcm = true

		j = 1
		while j < input

			if candidate % j != 0
				lcm = false
				j = input
			else
				j += 1
			end

		end

		return candidate if lcm
		i += 1
	end

end