# frozen_string_literal: true

require 'tennis_match'

describe TennisMatch do
  let(:tennis_match) { TennisMatch.new }

  describe '#game_score' do
    it 'starts a tennis match with each player on the starting score of 0' do
      expect(tennis_match.game_score).to eq '0-0'
    end
  end

  describe '#win_point' do
    it 'updates the score when player 1 wins a point' do
      tennis_match.win_point
      expect(tennis_match.game_score).to eq '15-0'
    end

    it 'updates the score when player 1 wins two points' do
      2.times { tennis_match.win_point }
      expect(tennis_match.game_score).to eq '30-0'
    end

    it 'updates the score when player 1 wins three points' do
      3.times { tennis_match.win_point }
      expect(tennis_match.game_score).to eq '40-0'
    end

    it 'resets the game score when player 1 wins four points' do
      4.times { tennis_match.win_point }
      expect(tennis_match.game_score).to eq '0-0'
    end
  end
end
