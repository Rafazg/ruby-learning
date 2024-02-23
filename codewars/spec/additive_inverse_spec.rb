require_relative '../Fundamentals/additive_inverse'

RSpec.describe "Solution" do
    it "Fixed tests" do
        expect(invert_number([1,2,3,4,5])).to eq([-1,-2,-3,-4,-5])
        expect(invert_number([1,2,3,4,5,-10])).to eq([-1,-2,-3,-4,-5,10])
    end
end
