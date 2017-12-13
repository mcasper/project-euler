# https://projecteuler.net/problem=7
#
# Find the 10_001st prime
#
# SOLVED: 104743

class Sieve
  def initialize(n)
    @n = n
    @num_range = initial_range
  end

  def primes
    multiples
  end

  private
  attr_reader :n

  def multiples
    @ans = []
    while @num_range.any? do
      puts "#{@ans.count} primes"
      p = @num_range.shift
      @ans << p
      multiplied_range = initial_range.map { |x| x * p }
      @num_range = @num_range - multiplied_range
    end
    @ans
  end

  def initial_range
    @initial ||= (2..n).to_a
  end
end

primes = Sieve.new(110_000).primes
puts "Result: #{primes[9999]}"
puts "Result: #{primes[10_000]}"
puts "Result: #{primes[10_001]}"
