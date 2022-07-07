require './katas/RomanKorkonishko/Korkonishko_kata3.rb'

RSpec.describe '#easyline' do
  context 'calculate the sum of the squares of the binomial coefficients' do
    it 'returns the sum of squares' do
      expect(easyline(1)).to eql(2)
      expect(easyline(7)).to eql(3432)
      expect(easyline(13)).to eql(10400600)
      expect(easyline(17)).to eql(2333606220)
      expect(easyline(19)).to eql(35345263800)
    end
    it 'returns an integer' do
      expect(easyline(7)).to be_a(Integer)
    end
  end
end
