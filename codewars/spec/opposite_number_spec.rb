require_relative '../Fundamentals/opposite_number'

RSpec.describe "Solution" do
    it "Fixed tests" do
      expect(opposite(1)).to eq (-1)
      expect(opposite(45)).to eq (-45)
      expect(opposite(-45)).to eq (45)
    end
  end