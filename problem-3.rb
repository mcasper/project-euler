# https://projecteuler.net/problem=3
#
# Find the largest prime factor of 600851475143
#
# SOLVED: 6857

prime = 600_851_475_143

(2..Math.sqrt(prime).to_i).each do |i|
  break if prime <= i
  prime /= i while (prime > i && prime % i == 0)
end

puts "Result: #{prime}"
