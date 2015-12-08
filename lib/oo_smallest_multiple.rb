# Implement your object-oriented solution here!


class SmallestMultiple

    def initialize(input)
        @input = input
    end

    def lcm
        a = @input
        x = 1
        while x <= @input
            if a % x == 0
                if x == @input
                    break
                end
                x += 1
            else
                a += 1
                x = 1
            end
        end
        return a
    end

end

