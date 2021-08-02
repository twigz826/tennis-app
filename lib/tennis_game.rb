# frozen_string_literal: true

# Class for an individual game
class TennisGame
  SCORING_SYSTEM = {
    0 => 15,
    15 => 30,
    30 => 40,
    40 => 'game'
  }.freeze

  attr_reader :player1_score, :player2_score, :p1_game_point, :p2_game_point

  def initialize
    @player1_score = 0
    @player2_score = 0
    @p1_game_point = false
    @p2_game_point = false
  end

  def score
    "#{@player1_score}-#{@player2_score}"
  end

  def play_point
    if deuce?
      play_deuce_point
    elsif p1_advantage
      play_p1_advantage_point
    elsif p2_advantage
      play_p2_advantage_point
    else
      play_normal_point
    end
  end

  def deuce?
    @player1_score == 40 && @player2_score == 40
  end

  def p1_advantage
    @player1_score == 'ADV'
  end

  def p2_advantage
    @player2_score == 'ADV'
  end

  def new_game
    reset_game_point_status
    reset_game_score
  end

  private

  def play_deuce_point
    result = random_boolean
    if result
      @player1_score = 'ADV'
    else
      @player2_score = 'ADV'
    end
  end

  def play_p1_advantage_point
    result = random_boolean
    if result
      @player1_score = 'game'
      print "Game Player 1. The game score has been reset."
    else
      @player1_score = 40
    end
  end

  def play_p2_advantage_point
    result = random_boolean
    if result
      @player2_score = 40
    else
      @player2_score = 'game'
      print "Game Player 2. The game score has been reset."
    end
  end

  def play_normal_point
    if random_boolean == true
      update_p1_score
      p1_game_point_tracker
    else
      update_p2_score
      p2_game_point_tracker
    end
  end

  def reset_game_point_status
    @p1_game_point = false
    @p2_game_point = false
  end

  def reset_game_score
    @player1_score = 0
    @player2_score = 0
  end

  # def game_complete?
  #   (@p1_game_point == true && @player1_score.zero?) || (@p2_game_point == true && @player2_score.zero?)
  # end

  def random_boolean
    [true, false].sample
  end

  def update_p1_score
    @player1_score = SCORING_SYSTEM[@player1_score]
  end

  def update_p2_score
    @player2_score = SCORING_SYSTEM[@player2_score]
  end

  def p1_game_point_tracker
    @p1_game_point = true if @player1_score == 40 && @player2_score != 40
  end

  def p2_game_point_tracker
    @p2_game_point = true if @player2_score == 40 && @player1_score != 40
  end
end
