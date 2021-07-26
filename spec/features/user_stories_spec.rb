# frozen_string_literal: true

describe 'User stories' do
  it 'starts a tennis match' do
    tennis_match = TennisMatch.new
    expect(tennis_match.score).to eq '0-0'
  end
end
