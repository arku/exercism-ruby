class Complement
  attr_reader :dna

  def initialize(dna)
    @dna = dna
  end

  def rna
    return '' if invalid_dna?

    replacements = { 'C' => 'G', 'G' => 'C', 'T' => 'A', 'A' => 'U' }
    dna.gsub(/[AGCT]/, replacements)
  end

  def self.of_dna(dna_strand)
    new(dna_strand).rna
  end

  private

  def invalid_dna?
    dna =~ /[^AGCT]/
  end
end

module BookKeeping
  VERSION = 4
end
