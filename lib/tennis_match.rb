# frozen_string_literal: true

# Class to play a tennis match
class TennisMatch
  SCORE = {
    0 => 15,
    15 => 30,
    30 => 40
  }

  def initialize
    @player1_score = 0
    @player2_score = 0
  end

  def game_score
    "#{@player1_score}-#{@player2_score}"
  end

  def win_point
    @player1_score = SCORE[@player1_score]
  end
end
