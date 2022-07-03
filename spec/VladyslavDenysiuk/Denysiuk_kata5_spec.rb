require './katas/VladyslavDenysiuk/Denysiuk_kata5.rb'

describe PaginationHelper do
  pag = PaginationHelper.new(%w[a b c d e f], 4)
  describe '#page_count' do
    context 'At any input' do
      it {expect(pag.page_count).to eql(2)}
    end
  end
  describe '#item_count' do
    it { expect(pag.item_count).to eql(6) }
  end

  describe '#page_item_count' do
    it {
      expect(pag.page_item_count(0)).to eql(4)
      expect(pag.page_item_count(1)).to eql(2)
      expect(pag.page_item_count(2)).to eql(-1)
    }
  end
  describe '#page_index' do
    it {
      expect(pag.page_index(5)).to eql(1)
      expect(pag.page_index(2)).to eql(0)
    }
  end
end
