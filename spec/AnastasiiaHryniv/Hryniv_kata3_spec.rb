require './katas/AnastasiiaHryniv/Hryniv_kata3.rb'

describe 'new_avg' do
  context 'given array of donations and expected new average' do
    it 'returns the next donation sum' do
      expect(new_avg([14, 30, 5, 7, 9, 11, 15], 92)).to eq(645)
      expect(new_avg([14, 30, 5, 7, 9, 11, 16], 90)).to eq(628)
      expect(new_avg([14, 30, 5, 7, 9, 11, 15], 2)).to raise_error(ArgumentError)
    end
  end
end
