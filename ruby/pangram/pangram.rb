module Pangram
  def self.pangram?(string)
    str = string.downcase
    ('a'..'z').all? { |letter| str.include? letter }
  end
end
