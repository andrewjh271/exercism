class Phrase
  def initialize(string)
    @string = string
  end

  def word_count
    @string.scan(/\b[\w']+\b/).each_with_object(Hash.new(0)) { |word, count| count[word.downcase] += 1 }
  end
end


# original: 

# class Phrase

#   private

#   attr_reader :string

#   public

#   def initialize(string)
#     @string = string
#   end

#   def word_count
#     count = Hash.new(0)
#     string.scan(/\b[\w']+\b/).each { |word| count[word.downcase] += 1 }
#     count
#   end
# end