class Hamming
  # Computes the hamming distance bettween two DNA strands
  # https://en.wikipedia.org/wiki/Hamming_distance
  # params:
  # strand_one a string representing a strand
  # strand_two a string representing a strand_two
  # returns: the hamming distance between the strands
  # raises ArgumentError if strand_one and strand_two are of different lengths
  attr_reader :strand_one, :strand_two

  def initialize(strand_one, strand_two)
    @strand_one = strand_one
    @strand_two = strand_two
  end

  def compute
    validate_strands

    hamming_distance = 0
    strand_one.length.times do |index|
      hamming_distance += distance(strand_one[index], strand_two[index])
    end
    hamming_distance
  end

  def self.compute(strand_one, strand_two)
    new(strand_one, strand_two).compute
  end

  private

  def distance(char_one, char_two)
    (char_one.downcase <=> char_two.downcase).abs
  end

  def validate_strands
    raise ArgumentError if strand_one.length != strand_two.length
  end
end

module BookKeeping
  VERSION = 3
end