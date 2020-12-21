# frozen_string_literal: true

# finds high scores
class HighScores
  attr_accessor :high_scores
  def initialize(array)
    self.high_scores = array
  end

  def scores
    high_scores
  end

  def latest
    high_scores.last
  end

  def personal_best
    high_scores.max
  end

  def personal_top_three
    high_scores.max(3)
  end

  def test_personal_top_highest_to_lowest
    high_scores.sort.reverse
  end

  def latest_is_personal_best?
    high_scores.last == high_scores.max
  end
end
