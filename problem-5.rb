# https://projecteuler.net/problem=5
#
# Find the smallest positive number divisible by 1-20
#
# SOLVED: 232_792_560

def fully_divisible?(num)
  return false if num % 2 != 0

  success = true
  3.upto(20).each do |i|
    if num % i != 0
      success = false
      break
    end
  end
  success
end

i = 1
start = Time.now

loop do
  break if fully_divisible?(i)
  i += 1

  if i % 100_000 == 0
    puts "Passed #{i}"
  end
end

puts "Result: #{i}"
puts "Elapsed: #{Time.now - start}"
