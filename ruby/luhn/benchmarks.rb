require 'benchmark'

module Benchmarks
  STRINGS = %w[055444285 055a444285 059a 8273123273520569].freeze

  def benchmark
    n = 1000000

    Benchmark.bm do |benchmark|
      benchmark.report('string.to_i.digits.each_with_index.sum') do
        n.times do
          STRINGS.each do |string|
            string.to_i.digits.each_with_index.sum do |char, index|
              index.odd? ? transform(char) : char
            end
          end
        end
      end

      benchmark.report('string.each_char.with_index.sum') do
        n.times do
          STRINGS.each do |string|
            string.each_char.with_index.sum do |char, index|
              (string.length - index).even? ? transform(char.to_i) : char.to_i
            end
          end
        end
      end

      benchmark.report('string.to_i.digits.each_slice(2).sum') do
        n.times do
          STRINGS.each do |string|
            string.to_i.digits.each_slice(2).sum do |first, second|
              first + (second ? transform(second) : 0)
            end
          end
        end
      end

      benchmark.report('transform(second.to_i)') do
        n.times do
          STRINGS.each do |string|
            string.to_i.digits.each_slice(2).sum do |first, second|
              first + transform(second.to_i)
            end
          end
        end
      end

      benchmark.report('string.each_char.all?(/\d/)') do
        n.times do
          STRINGS.each do |string|
            string.each_char.all?(/\d/)
          end
        end
      end
      
      benchmark.report('string !~ /\D/') do
        n.times do
          STRINGS.each do |string|
            string !~ /\D/
          end
        end
      end

      benchmark.report('!string.match?(/\D/)') do
        n.times do
          STRINGS.each do |string|
            !string.match?(/\D/)
          end
        end
      end
    end
  end

  def transform(number)
    doubled = number * 2
    doubled > 9 ? doubled - 9 : doubled
  end
end