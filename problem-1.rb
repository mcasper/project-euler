# https://projecteuler.net/problem=1
#
# Sum of all multiples of 3 or 5 below 1000.
#
# SOLVED: 233168

result = (1..999).inject(0) do |acc, i|
  if (i % 3 == 0) || (i % 5 == 0)
    acc + i
  else
    acc
  end
end

puts "Result: #{result}"
