require 'calculator.rb'

describe Calculator do
  let(:c) { Calculator.new }

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
    it 'adds float and int' do
      expect(c.add(1.1, 2)).to eq(3.1)
    end
  end

  describe '#subtract' do
    it 'subtracts postive integers properly' do
      expect(c.subtract(3,2)).to eq(1)
    end
     it 'subtracts negative integers properly' do
      expect(c.subtract(-3,-2)).to eq(-1)
    end
     it 'subtracts postive float properly' do
      expect(c.subtract(3.0,2.0)).to eq(1.0)
    end
    it 'subtracts float and int' do
      expect(c.subtract(1.0, 2)).to eq(-1.0)
    end
   end

   describe '#multiply' do
    it 'multiplies positive int numbers' do
      expect(c.multiply(1, 2)).to eq(2)
    end
    it 'multiplies negative int numbers' do
      expect(c.multiply(-1,-2)).to eq(2)
    end
    it 'multiplies float numbers' do
      expect(c.multiply(-1.0, -2.0)).to eq(2.0)
    end
    it 'multiplies float and int' do
      expect(c.multiply(1.0, 2)).to eq(2.0)
    end
   end

   describe '#divide' do
      it 'raises ArgumentError on 0 for 2nd argument' do
        expect {c.divide(3,0)}.to raise_error(ArgumentError)
      end

      it 'returns int if no remainder' do
        expect(c.divide(10,2)).to eq(5)
      end

      it 'return float if remainder exists' do
        expect(c.divide(11,2)).to eq(5.5)
      end

      it 'divides negative numbers correctly' do
        expect(c.divide(10,-2)).to eq(-5)
      end

   end

   describe '#pow' do
     it 'properly raises number to power' do
       expect(c.pow(10,2)).to eq(100)
     end

     it 'properly accounts for negative powers' do
       expect(c.pow(10,-2)).to eq(0.01)
     end

     it 'properly accounts for decimal powers' do
       expect(c.pow(100, 0.5)).to eq(10.0)
     end
   end

   describe '#sqrt' do
     it 'properly determines square roots for positive numbers' do
       expect(c.sqrt(100)).to eq(10)
     end
     it 'raises errors for negative inputs' do
        expect{c.sqrt(-100)}.to raise_error(ArgumentError)
     end
     it 'returns 2-digit decimals for non-round roots' do
        expect(c.sqrt(20)).to eq(4.47)
      end
   end

   describe '#memory=()' do
      it 'stores an object in memory' do
        expect(c.memory=(100)).to eq(c.instance_variable_get(:@memory))
      end
   end

   describe '#memory' do
     it 'returns the object in memory' do
       c.memory=(9999)
       expect(c.memory).to eq(9999)
     end
     it 'clears memory when returned' do
       c.memory=(123456)
       c.memory
       expect(c.instance_variable_get(:@memory)).to eq(nil)
     end
   end

   describe '#stringify' do
     
   end
end
