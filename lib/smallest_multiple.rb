# Implement your procedural solution here!
def smallest_multiple(limit)
	increment = limit
	while !(1..limit).all?{|div| increment % div == 0}
		increment += limit
	end
	return increment
end
