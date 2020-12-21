class PhoneNumber
  def self.clean(string)
    number = string.chars.select { |c| c.match(/\d/) }.join
    number = number[1..-1] if number.length == 11 && number[0] == '1'
    number if number.length == 10 && number[0].match(/[^01]/) && number[3].match(/[^01]/)
  end
end
