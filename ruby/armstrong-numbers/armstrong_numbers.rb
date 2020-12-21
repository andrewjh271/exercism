class ArmstrongNumbers
  def self.include?(num)
    power = num.zero? ? 1 : Math.log10(num).ceil
    num.to_s.chars.map(&:to_i).reduce(0) do |sum, n|
      sum += n**power
    end.equal?(num)
  end
end
