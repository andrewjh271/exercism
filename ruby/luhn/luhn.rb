class Luhn
  def self.valid?(string)
    new(string).valid?
  end

  def initialize(string)
    @string = string.delete(' ')
  end

  def valid?
    return false unless length > 1 && only_digits?

    (sum % 10).zero?
  end

  private

  attr_reader :string

  def length
    @length ||= string.length
  end
  
  def only_digits?
    !string.match?(/\D/)
  end
  
  def sum
    @sum ||= calculate_sum
  end

  def calculate_sum
    string.to_i.digits.each_slice(2).sum do |first, second|
      first + transform(second.to_i)
    end
  end

  def transform(number)
    doubled = number * 2
    doubled > 9 ? doubled - 9 : doubled
  end
end