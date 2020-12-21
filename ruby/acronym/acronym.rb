class Acronym
  def self.abbreviate(string)
    # string.scan(/\w+/).map {|word|word.capitalize.slice(0)}.join
    string.scan(/\w+/).map{|word|word[0].upcase}.join
  end
end

# mentor comments: 
# word[0] more common solution; word.chr also possible to return first character
# calling upcase does less (slight performance gain) and improves readability