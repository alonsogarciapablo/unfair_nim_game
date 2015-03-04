require './unfair_nim.rb'

describe UnfairNim do
  
  describe '#solve' do

    it 'returns 0 if friend will loose' do
      game = UnfairNim.new([1,1])
      expect(game.solve).to eq(0)
    end

    it 'returns 1' do
      game = UnfairNim.new([1,1,1])
      expect(game.solve).to eq(3)
    end

    it 'returns 2' do
      game = UnfairNim.new([1,3])
      expect(game.solve).to eq(2)
    end

    it 'returns 6' do
      game = UnfairNim.new([10, 4, 5, 1])
      expect(game.solve).to eq(6)
    end

    it 'caches the result' do
      game = UnfairNim.new([10, 4, 5, 1])
      expect(game.solve).to eq(6)
      expect(game.solve).to eq(6)
    end
  end
end
