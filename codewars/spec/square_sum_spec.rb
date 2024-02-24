require_relative '../Fundamentals/square_sum'


RSpec.describe "Solution" do
    it "Fixed tests" do
    expect(square_sum([1, 2])).to eq(5)
    expect(square_sum([0, 3, 4, 5])).to eq(50)
    expect(square_sum([-1, -2])).to eq(5)
    expect(square_sum([-1, 0, 1])).to eq(2)
    end
end 