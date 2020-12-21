class Matrix

  attr_accessor :rows, :columns

  def initialize(string)
    @string = string
    @rows = []
    @columns = []
    fill
  end

  private

  def fill
    @string.each_line { |l| rows << l.split.map(&:to_i) }
    rows.length.times do |i|
      columns[i] = []
      rows.each { |j| columns[i] << j[i] }
    end
  end

end