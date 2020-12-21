class Raindrops
  RULES = {
    3 => 'Pling',
    5 => 'Plang',
    7 => 'Plong'
  }
  
  attr_reader :number, :sound

  def self.convert(number)
    Raindrops.new(number).output
  end

  def initialize(number)
    @number = number
    @sound = RULES.each_with_object(raindrop_speak = '') do |(factor, sound_component)|
      raindrop_speak << sound_component if factor?(number, factor)
    end
  end

  def output
    sound.empty? ? number.to_s : sound
  end

  private

  def factor?(product, factor)
    (product % factor).zero?
  end
end
