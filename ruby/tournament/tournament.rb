class Tournament
  ROW_HEADER_LENGTH = 30
  CELL_ENTRY_LENGTH = 2
  COLUMN_HEADERS = {
    matches: 'MP',
    wins: 'W',
    draws: 'D',
    losses: 'L',
    points: 'P'
  }.freeze

  def self.tally(input)
    new(input).tally
  end

  def initialize(input)
    @results = Hash.new { |hash, key| hash[key] = Hash.new(0) }
    compile_results(input)
  end

  def tally
    banner = [build_row('Team', COLUMN_HEADERS)]
    table = @results.sort_by { |team_name, data| [-data[:points], team_name] }
                    .map     { |team_name, data| build_row(team_name, data)  }
    "#{(banner + table).join("\n")}\n"
  end

  private

  def build_row(row_header, data)
    [row_header.ljust(ROW_HEADER_LENGTH),
     data[:matches],
     data[:wins],
     data[:draws],
     data[:losses],
     data[:points]
    ].map { |result| result.to_s.rjust(CELL_ENTRY_LENGTH) }.join(' | ')
  end
  
  def compile_results(raw_data)
    raw_data.each_line do |line|
      parsed_data = line.match(/(?<team1>.*);(?<team2>.*);(?<result>.*)/)
      next unless parsed_data

      case (parsed_data[:result])
      when 'win'
        @results[parsed_data[:team1]][:wins] += 1
        @results[parsed_data[:team2]][:losses] += 1
      when 'loss'
        @results[parsed_data[:team2]][:wins] += 1
        @results[parsed_data[:team1]][:losses] += 1
      else
        @results[parsed_data[:team1]][:draws] += 1
        @results[parsed_data[:team2]][:draws] += 1
      end
      @results[parsed_data[:team1]][:matches] += 1
      @results[parsed_data[:team2]][:matches] += 1
    end
    calculate_points
  end
  
  def calculate_points
    @results.each { |_k, v| v[:points] = v[:wins] * 3 + v[:draws] }
  end
end