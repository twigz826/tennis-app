# frozen_string_literal: true

# Class to play a tennis match
class TennisMatch
  SCORING_SYSTEM = {
    0 => 15,
    15 => 30,
    30 => 40,
    40 => 0
  }

  def initialize
    @player1_game_score = 0
    @player2_game_score = 0
    @player1_set_score = 0
    @player2_set_score = 0
  end

  def set_score
    "The set score is #{@player1_set_score}-#{@player2_set_score}"
  end

  def game_score
    "The game score is #{@player1_game_score}-#{@player2_game_score}"
  end

  def win_point
    update_set_score if game_point?
    @player1_game_score = SCORING_SYSTEM[@player1_game_score]
  end

  private

  def game_point?
    return true if @player1_game_score == 40 && @player2_game_score != 40
  end

  def update_set_score
    @player1_set_score += 1
  end

end
