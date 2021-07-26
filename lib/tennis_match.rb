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
    if @player1_score == 0
      @player1_score = 15
    else
      @player1_score = 30
    end
  end
end
