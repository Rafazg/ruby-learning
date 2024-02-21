require_relative '../Fundamentals/find_max_min'

RSpec.describe "Test" do
    it "Examples" do
      expect(min([-52, 56, 30, 29, -54, 0, -110])).to eq(-110);
      expect(min([42, 54, 65, 87, 0])).to eq(0);
      expect(max([4,6,2,1,9,63,-134,566])).to eq(566);
      expect(max([5])).to eq(5);
    end
  end