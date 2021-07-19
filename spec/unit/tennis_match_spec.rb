require "tennis_match"

describe TennisMatch do
  describe "#score" do
    it "starts a tennis match with each player on the starting score of 0" do
      tennis_match = TennisMatch.new
      expect(tennis_match.score).to eq "0-0"
    end
  end

end
