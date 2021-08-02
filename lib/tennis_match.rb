# frozen_string_literal: true

require_relative 'tennis_game'

# Class to play a tennis match
class TennisMatch

  def initialize
    @current_game = TennisGame.new
    @player1_set_score = 0
    @player2_set_score = 0
  end

  def set_score
    "The set score is #{@player1_set_score}-#{@player2_set_score}"
  end

  def game_score
    "The game score is #{@current_game.score}"
  end

  def play_point
    @current_game.play_point
    update_set_score
    if @current_game.score == "0-0"
      set_score
    else
      game_score
    end
  end

  def update_set_score
    if @current_game.player1_score == 'game'
      update_p1_set_score
      @current_game.new_game
    elsif @current_game.player2_score == 'game'
      update_p2_set_score
      @current_game.new_game
    end
  end

  private

  def update_p1_set_score
    @player1_set_score += 1
  end

  def update_p2_set_score
    @player2_set_score += 1
  end

end
