class Raindrops
  attr_reader :number

  def initialize(number)
    @number = number
  end

  def convert
    raindrop_speak = pling(number) + plang(number) + plong(number)
    return number.to_s if raindrop_speak.empty?
    raindrop_speak
  end

  def self.convert(number)
    new(number).convert
  end

  def method_missing(method, *args)
     raindrop_lang = { pling: 3, plang: 5, plong: 7 }

    if raindrop_lang.has_key?(method)
      if (args[0] % raindrop_lang[method] == 0)
        speak = method.to_s.capitalize
      end
      return speak || ''
    end

    super
  end

end

module BookKeeping
  VERSION = 3
end
