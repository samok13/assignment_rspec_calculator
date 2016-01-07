require 'calculator.rb'

describe Calculator do
  let(:c) {Calculator.new}

  describe '#add' do
    it 'adds postive integer numbers properly' do
      expect(c.add(1,2)).to eq(3)
    end
    it 'adds negative integer numbers properly' do
      expect(c.add(-1,-2)).to eq(-3)
    end
    it 'adds float numbers properly' do
      expect(c.add(1.0,2.0)).to eq(3.0)
    end
  end

  describe '#subtract' do
    it 'subtracts postive integers properly' do
      expect(c.subtract(3,2)).to eq(1)
    end
     it 'subtracts negative integers properly' do
      expect(c.subtract(-3,-2)).to eq(-1)
    end
     it 'subtracts postive integers properly' do
      expect(c.subtract(3.0,2.0)).to eq(1.0)
    end
   end 

   describe '#multiply' do
    it 'properly multiplies numbers' do
      expect(c.multiply(1,2)).to eq(2)
    end
   end

   describe '#divide' do
      it 'properly divides numbers' do
        expect {c.divide(3,0)}.to raise_error(ArgumentError)
      end
   end 

end
