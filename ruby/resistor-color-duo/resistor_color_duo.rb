=begin
Write your code for the 'Resistor Color Duo' exercise in this file. Make the tests in
`resistor_color_duo_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/resistor-color-duo` directory.
=end

class ResistorColorDuo

  COLOR_BANDS = %w[black brown red orange yellow green blue violet grey white]

  def self.value(arr)
    "#{COLOR_BANDS.index(arr[0])}#{COLOR_BANDS.index(arr[1])}".to_i
  end

end