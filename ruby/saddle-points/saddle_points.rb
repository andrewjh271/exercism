class Matrix

  attr_reader :rows, :columns

  def initialize(string)
    @string = string
    @rows = []
    @columns = []
    fill
  end

  def saddle_points
    arr = []
    rows.each_with_index do |row, i|
      row.each_with_index do |element, j|
        next unless element == row.max

        arr << [i, j] if columns[j].nil? || element == columns[j].min
      end
    end
    arr
  end

  private

  def fill
    max = 0
    @string.each_line do |l|
      row = l.split.map(&:to_i)
      rows << row
      max = row.length if row.length > max
    end
    max.times do |i|
      columns[i] = rows.each_with_object([]) { |row, array| array << row[i] }
    end
  end
end
