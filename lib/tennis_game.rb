class TennisGame

  SCORING_SYSTEM = {
    0 => 15,
    15 => 30,
    30 => 40,
    40 => 0
  }

  def initialize
    @player1_game_score = 0
    @player2_game_score = 0
  end

  def score
    "The game score is #{@player1_game_score}-#{@player2_game_score}"
  end

  def play_point
    if random_boolean == true
      update_p1_score
      return "Player 1 won the point"
    else
      update_p2_score
      return "Player 2 won the point"
    end
  end

  private

  def random_boolean
    [true, false].sample
  end

  def update_p1_score
    @player1_game_score = SCORING_SYSTEM[@player1_game_score]
  end

  def update_p2_score
    @player2_game_score = SCORING_SYSTEM[@player2_game_score]
  end

end
