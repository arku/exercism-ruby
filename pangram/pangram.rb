require 'set'

class Pangram
  def self.pangram?(phrase)
    alphabets = Set.new('a'..'z')

    phrase.each_char do |char|
      alphabets.delete(char.downcase) if char.downcase.ord.between?(97, 122)
      return true if alphabets.empty?
    end
    false
  end
end

module BookKeeping
  VERSION = 3
end

