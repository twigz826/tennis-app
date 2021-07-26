# frozen_string_literal: true

# Class to play a tennis match
class TennisMatch
  def initialize
    @player1_score = 0
    @player2_score = 0
  end

  def score
    "#{@player1_score}-#{@player2_score}"
  end

  def win_point
    @player1_score = 15
  end
end
