require_relative '../Fundamentals/how_good_you_really'

RSpec.describe "Basic Tests" do
  it "better_than_average([2, 3], 5) should return true" do
    expect(better_than_average([2, 3], 5)).to eq(true)
  end

  it "better_than_average([100, 40, 34, 57, 29, 72, 57, 88], 75) should return true" do
    expect(better_than_average([100, 40, 34, 57, 29, 72, 57, 88], 75)).to eq(true)
  end
  
  it "better_than_average([12, 23, 34, 45, 56, 67, 78, 89, 90], 69) should return true" do
    expect(better_than_average([12, 23, 34, 45, 56, 67, 78, 89, 90], 69)).to eq(true)
  end
  
  it "better_than_average([41, 75, 72, 56, 80, 82, 81, 33], 50) should return false" do
    expect(better_than_average([41, 75, 72, 56, 80, 82, 81, 33], 50)).to eq(false)
  end
  
  it "better_than_average([29, 55, 74, 60, 11, 90, 67, 28], 21) should return false" do
    expect(better_than_average([29, 55, 74, 60, 11, 90, 67, 28], 21)).to eq(false)
  end
end
