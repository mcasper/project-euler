# https://projecteuler.net/problem=2
#
# Sum of all even Fibonnaci numbers below 4 million
#
# SOLVED: 4613732

n_2 = 1
n_1 = 2
n = 3

result = 2

while n < 4_000_000
  if n % 2 == 0
    result += n
  end

  n_2 = n_1
  n_1 = n
  n = n_1 + n_2
end

puts "Result: #{result}"
