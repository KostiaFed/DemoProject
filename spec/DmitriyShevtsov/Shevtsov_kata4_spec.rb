require 'bookseller'

describe 'stockList' do

  context 'when given ideal arguments' do
    it 'returns stock number for each category' do
      a = ["A", "B"]
      b = ["ABAR 200", "CDXE 500", "BKWR 250", "BTSQ 890", "DRTY 600"]
      expect(stockList(b, a)).to eq('(A : 200) - (B : 1140)')
    end
  end

  context 'when given empty arguments' do
    it 'still returns value' do
      a = ["A", "B"]
      b = ["ABAR ", "CDXE 500", "BKWR 250", "BTSQ 890", "DRTY 600"]
      expect(stockList(b, a)).to eq('(A : 0) - (B : 1140)')
    end
  end

end
