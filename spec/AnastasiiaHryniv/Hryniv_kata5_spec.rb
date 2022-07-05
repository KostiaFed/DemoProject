require './katas/AnastasiiaHryniv/Hryniv_kata5'

describe 'perimeter' do
  context 'when there\'s one more square' do
    it 'returns sum of the square perimeters' do
      expect(perimeter(5)).to eq(80)
      expect(perimeter(7)).to eq(216)
      expect(perimeter(20)).to eq(114_624)
      expect(perimeter(30)).to eq(14_098_308)
      expect(perimeter(100)).to eq(6_002_082_144_827_584_333_104)
    end
  end
end
