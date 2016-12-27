class Sieve
  attr_reader :limit, :list

  def initialize(limit)
    @limit = limit
    @list = (2..limit).to_a
  end

  def primes
    start_index, prime_numbers = 0, []

    list.each do |number|
      next_prime = next_prime_number(start_index)
      return prime_numbers unless next_prime

      prime_numbers << next_prime
      start_index = next_prime - 1 # the list starts from 2(index 0)

      # Start from next_prime ^ 2 which is at index next_prime ^ 2 - 2
      # (since 2 is  at index 0 in the list, subtract 2 from next_prime ^ 2)
      # and move in increments of next_prime, marking them as composite
      composite_start_index = square(next_prime) - 2
      mark_composites(composite_start_index, next_prime)
    end
  end

  private

  def mark_composites(start, increments)
    (start..list.size - 1).step(increments).each { |index| list[index] = '-' }
  end

  def square(num)
    num * num
  end

  def next_prime_number(start_index)
    (start_index..list.size - 1).each do |index|
      return list[index] unless list[index] == '-'
    end
    nil
  end
end

module BookKeeping
  VERSION = 1
end


a = Sieve.new(10).primes