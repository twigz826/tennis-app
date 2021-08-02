# frozen_string_literal: true

require 'tennis_match'

describe TennisMatch do
  let(:tennis_match) { TennisMatch.new }

  describe '#game_score' do
    it 'starts a tennis match with each player on the starting game score of 0' do
      expect(tennis_match.game_score).to eq 'The game score is 0-0'
    end
  end

  describe '#win_point' do
    context 'player 1' do
      xit 'resets the game score on winning four points' do
        4.times { tennis_match.win_point('p1') }
        expect(tennis_match.game_score).to eq 'The game score is 0-0'
      end
    end

    context 'player 2' do
      xit 'updates the score on winning a point' do
        tennis_match.win_point('p2')
        expect(tennis_match.game_score).to eq 'The game score is 0-15'
      end

      xit 'updates the score on winning two points' do
        2.times { tennis_match.win_point('p2') }
        expect(tennis_match.game_score).to eq 'The game score is 0-30'
      end

      xit 'resets the game score on winning four points' do
        4.times { tennis_match.win_point('p2') }
        expect(tennis_match.game_score).to eq 'The game score is 0-0'
      end
    end
  end

  describe '#match_score' do
    it 'starts a tennis match with each player on the starting match score of 0' do
      expect(tennis_match.set_score).to eq 'The set score is 0-0'
    end

    xit 'when a game is won, the match score is updated' do
      4.times { tennis_match.win_point('p1') }
      expect(tennis_match.set_score).to eq 'The set score is 1-0'
    end
  end
end
