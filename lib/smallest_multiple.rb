# Implement your procedural solution here!

# Require Sieve of Eratosthenes algorithm for getting prime numbers for prime factorization
# Sieve of Eratosthenes code is not mine. Source: http://rosettacode.org/wiki/Sieve_of_Eratosthenes#Ruby
require_relative 'eratosthenes'

# Calculates the smallest multiple by figuring out the prime factorization of each number within range of 1 to the input. It stores the prime factors within the range inside a hash which counts maximum number of each prime factor needed to make every single number.
# Example:   input = 5
#   Prime factors needed to make every number from 2 to 5 are 2,3, and 5.
#   2 = 2^1  3 = 3^1  4 = 2^2  5 = 5^1
#   prime_factors will equal {2: 2, 3: 1, 5: 1}
#
#   The smallest multiple would equal 2 * 2 * 3 * 5, which is 60.
def smallest_multiple(input=1)
  least_common_multiple = 1
  return least_common_multiple if input <= 1
  numbers_to_check = [*2..input]

  # Puts each prime number within input range inside prime_factors
  # prime_factors has each prime factor in the input range as a key and the max count as a value(starts at 1)
  prime_numbers = eratosthenes(input)
  prime_factors = Hash.new
  prime_numbers.each{|prime| prime_factors[prime] = 1}

  # Deletes the prime factors from numbers_to_check because their power/count will be 1. Eliminate some steps
  numbers_to_check.delete_if{|n| prime_numbers.include?(n)}

  # Checks the numbers_to_check by finding the prime_factorization of each number or n. Starts at the beginning of prime_numbers and repeatedly divides the number by the prime number if divisible. It then pushes that prime number into prime_factors_of_n for counting. If the count/power of the prime factor is greater than the one inside prime_factors then it sets the value to that count/power.
  numbers_to_check.each{ |n|
    i = 0
    prime_factors_of_n = []
    until n == 1
      if n % prime_numbers[i] == 0
        prime_factors_of_n.push(prime_numbers[i])
        n /= prime_numbers[i]
        i -= 1
      end
      i += 1
    end
# Counts the power of each prime factor and reassigns that power to the value inside prime_factors if the count was higher.
    prime_factors_of_n.each{|prime| prime_factors[prime] = prime_factors_of_n.count(prime) if prime_factors_of_n.count(prime) > prime_factors[prime]}
    }

# Multiplies the least_common_multiple by the prime factor by the power that prime factor. Then returns least_common_multiple.
prime_factors.each{|prime, power| least_common_multiple *= prime**power}
  return least_common_multiple
end
