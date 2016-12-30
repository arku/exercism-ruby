class Robot
  attr_reader :name

  def initialize
    @name = nil
  end

  def reset
  end
end

module BookKeeping
  VERSION = 2
end