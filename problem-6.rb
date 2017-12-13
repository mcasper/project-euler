# https://projecteuler.net/problem=6
#
# Find the difference between the sum of 1-100 and the square of the sum of 1-100
#
# SOLVED: 25164150

nums = 1.upto(100).to_a
sum_of_the_squares = nums.map { |x| x * x }.sum
square_of_the_sum = (nums.sum * nums.sum)
answer = square_of_the_sum - sum_of_the_squares

puts "Result: #{answer}"
