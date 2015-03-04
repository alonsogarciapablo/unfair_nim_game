require './unfair_nim.rb'

describe UnfairNim do
  
  describe '::solve' do

    it 'should return 0 if friend will loose' do
      expect(UnfairNim.solve([1,1])).to eq(0)
    end

    it 'should return 1' do
      expect(UnfairNim.solve([1,1,1])).to eq(3)
    end

    it 'should return 2' do
      expect(UnfairNim.solve([1,3])).to eq(2)
    end

    it 'should return 6' do
      expect(UnfairNim.solve([10, 4, 5, 1])).to eq(6)
    end
  end
end
