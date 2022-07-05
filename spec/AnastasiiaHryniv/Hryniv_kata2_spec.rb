require './katas/AnastasiiaHryniv/Hryniv_kata2'

describe '.two_decimal_places' do
  context 'When given a number' do
    it 'returns it rounded to two decimal places' do
      expect(two_decimal_places(5.5589)).to eq(5.56)
      expect(two_decimal_places(14.788888)).to eq(14.79)
    end
  end

  context 'when given zero' do
    it 'returns 0.00' do
      expect(two_decimal_places(0)).to eq(0.00)
    end
  end

  context 'when given a negative number' do
    it 'returns it rounded' do
      expect(two_decimal_places(-18.678)).to eq(-18.68)
    end
  end
end
