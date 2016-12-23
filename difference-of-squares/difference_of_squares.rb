class Squares
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def square_of_sum
    square(number * (number + 1) / 2)
  end

  def sum_of_squares
    (number * (number + 1) * (2 * number + 1)) / 6
  end

  def difference
    square_of_sum - sum_of_squares
  end

  private

  def square(num)
    num * num
  end
end

module BookKeeping
  VERSION = 3
end