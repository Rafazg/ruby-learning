require_relative '../Fundamentals/Calculo'

RSpec.describe Calculo do
    describe '#soma' do
      it 'returns the result of the sum if the sum is valid' do
        calulo = Calculo.new(1) # Instantiate an instance of the Calculo class
        expect(calulo.soma).to eq(3)
      end
    end
  end