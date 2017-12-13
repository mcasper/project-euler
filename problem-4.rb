# https://projecteuler.net/problem=4
#
# Find the largest palindrome that is the product of two 3 digit numbers.
#
# ANSWER: 906609 - 993 * 913

def palindrome?(num)
  num.to_s == num.to_s.reverse
end

set_a = 999.downto(100).to_a
set_b = set_a.dup

permutations = set_a.product(set_b)
answer_product = 0
answer = []

permutations.each do |perm|
  product = perm.first * perm.last

  if palindrome?(product) && product > answer_product
    answer_product = product
    answer = perm
  end
end

puts "Result: #{answer}"
puts "Palindrome: #{answer_product}"
