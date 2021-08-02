# frozen_string_literal: true

require 'tennis_game'

describe TennisGame do
  let(:game) { TennisGame.new }

  describe '#score' do
    it 'can read the score of the current game' do
      expect(game.score).to eq 'The game score is 0-0'
    end
  end

  describe '#play_point' do
    context 'player 1 wins the point' do
      before(:each) do
        allow(game).to receive(:random_boolean).and_return true
      end

      it 'can play a point' do
        game.play_point
        expect(game.score).to eq 'The game score is 15-0'
      end

      it 'can play 3 points' do
        3.times { game.play_point }
        expect(game.score).to eq 'The game score is 40-0'
      end

      it 'can play 4 points and resets the game score to 0' do
        4.times { game.play_point }
        expect(game.score).to eq 'The game score is 0-0'
      end
    end

    context 'player 2 wins the point' do
      before(:each) do
        allow(game).to receive(:random_boolean).and_return false
      end

      it 'can play a point' do
        game.play_point
        expect(game.score).to eq 'The game score is 0-15'
      end

      it 'can play 3 points' do
        3.times { game.play_point }
        expect(game.score).to eq 'The game score is 0-40'
      end

      it 'can play 4 points and resets the game score to 0' do
        4.times { game.play_point }
        expect(game.score).to eq 'The game score is 0-0'
      end
    end
  end
end
