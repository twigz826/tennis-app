# frozen_string_literal: true

require 'tennis_game'

describe TennisGame do
  let(:game){ TennisGame.new }

  it 'initializes a new game of tennis' do
    expect{ game }.not_to raise_error
  end

  it 'can read the score of the current game' do
    expect(game.score).to eq "The game score is 0-0"
  end

  it 'can play a point where player 1 wins the point' do
    allow(game).to receive(:random_boolean).and_return true
    game.play_point
    expect(game.score).to eq "The game score is 15-0"
  end

  it 'can play a point where player 2 wins the point' do
    allow(game).to receive(:random_boolean).and_return false
    game.play_point
    expect(game.score).to eq "The game score is 0-15"
  end

end
