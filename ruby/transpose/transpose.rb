class Transpose
  def self.transpose(input)
    rows = []
    new_rows = []
    rows = input.split("\n")
    max = rows.reduce(0) { |m, r| m < r.length ? r.length : m }
    max.times do |i|
      new_rows[i] = rows.map { |row| row[i] }
      last = new_rows[i].rindex { |char| char }
      new_rows[i] = new_rows[i][0..last]
      new_rows[i] = new_rows[i].map { |char| char.nil? ? ' ' : char }.join
    end
    new_rows.join("\n")
  end
end
