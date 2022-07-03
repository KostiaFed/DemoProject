require './katas/AnastasiiaHryniv/Hryniv_kata1.rb'

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

  context 'when given special symbol' do
    it 'returns argument error' do
    expect(am_I_Wilson('$')).to raise_error(ArgumentError)
    end
  end

end
