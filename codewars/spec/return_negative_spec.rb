require_relative '../Fundamentals/return_negative'

RSpec.describe "Solution" do
  it "Fixed tests" do
    expect(make_negative(42)).to eq(-42)
  end
end