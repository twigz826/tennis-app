# frozen_string_literal: true

require 'tennis_match'

describe TennisMatch do
  describe '#score' do
    it 'starts a tennis match with each player on the starting score of 0' do
      tennis_match = TennisMatch.new
      expect(tennis_match.score).to eq '0-0'
    end

  describe '#win_point' do
    it 'updates the score when player 1 wins a point' do
      tennis_match = TennisMatch.new
      tennis_match.win_point
      expect(tennis_match.score).to eq '15-0'
    end
  end
  end
end
