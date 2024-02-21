require_relative '../Fundamentals/transportation_on_vacation'

RSpec.describe "Transportation_Test" do
    it "Fixed tests" do
      expect(rental_car_cost(1)).to eq(40)
      expect(rental_car_cost(2)).to eq(80)
      expect(rental_car_cost(3)).to eq(100)
    end
  end