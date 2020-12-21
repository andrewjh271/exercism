class Proverb
  attr_reader :words, :qualifier

  def initialize(*words, **modify)
    @words = words
    @qualifier = modify[:qualifier] + ' ' if modify[:qualifier]
  end

  def to_s
    string = ''
    (words.length - 1).times do |i|
      string << "For want of a #{words[i]} the #{words[i + 1]} was lost.\n"
    end
    string << "And all for the want of a #{qualifier}#{words.first}."
  end
end
