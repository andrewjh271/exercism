class Anagram
  def initialize(key)
    @key = key
    @sorted_key = key.downcase.split('').sort
  end

  def match(list)
    list.select do |word|
      word.downcase.split('').sort == @sorted_key && word.downcase != @key.downcase
    end
  end
end