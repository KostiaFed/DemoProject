require 'wilson'

describe 'am_I_Wilson' do

  context 'when given real Wilson Prime number' do
    it 'returns true' do
      expect(am_I_Wilson(5)).to eq(true)
      expect(am_I_Wilson(13)).to eq(true)
      expect(am_I_Wilson(563)).to eq(true)
    end
  end

  context 'When given any other positive number' do
    it 'returns false' do
      expect(am_I_Wilson(16)).to eq(false)
      expect(am_I_Wilson(88)).to eq(false)
    end
  end

#  context 'when given a special symbol instead of number' do
#    it 'throws error' do
#      expect(am_I_Wilson('$')).to raise_error('No, not the special symbol please')
#    end
#  end

#  context 'when given a letter/string instead of number' do
#    it 'therows error' do
#      expect(am_I_Wilson('x')).to raise_error('Really? A letter?')
#    end
#  end
end
