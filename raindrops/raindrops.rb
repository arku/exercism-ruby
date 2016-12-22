class Raindrops
  RULES = { pling: 3, plang: 5, plong: 7 }

  def self.convert(number)
    raindrop_speak = ''

    RULES.each do |rule, divisor|
      raindrop_speak << rule.to_s.capitalize if number.send(:%, divisor).zero?
    end

    raindrop_speak.empty? ? number.to_s : raindrop_speak
  end
end

module BookKeeping
  VERSION = 3
end
