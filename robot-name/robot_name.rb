class Robot
  attr_reader :name

  def initialize
    @name = random_name
  end

  def reset
    @name = random_name
  end

  private

  def random_name
    srand # chooses a random seed based on time and process id
    random_two_letters + random_three_digit_number.to_s
  end

  def random_two_letters
    2.times.map { rand(65..90).chr }.join
  end

  def random_three_digit_number
    rand(100..999)
  end
end

module BookKeeping
  VERSION = 2
end

