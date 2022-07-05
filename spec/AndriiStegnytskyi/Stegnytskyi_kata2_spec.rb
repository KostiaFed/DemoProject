require './katas/AndriiStegnytskyi/Stegnytskyi_kata2'

describe '#string_clean' do
  context 'checks for different inputs' do
    it 'does not remove blank spaces' do
      expect(string_clean('')).to eql('')
    end

    it 'does not remove white spaces' do
      expect(string_clean(' ')).to eql(' ')
    end

    it 'does not remove a lot of white spaces' do
      expect(string_clean('     ')).to eql('     ')
    end

    it 'does not remove punctuation marks' do
      expect(string_clean('. , ? !')).to eql('. , ? !')
    end

    it 'removes numbers' do
      expect(string_clean('(H123ello th666e69re!)')).to eql('(Hello there!)')
    end

    it 'does not remove special characters' do
      expect(string_clean('!@#$%^&*()_+')).to eql('!@#$%^&*()_+')
    end

    it 'does not remove cyrilyc' do
      expect(string_clean('Просто набір слів та літер')).to eql('Просто набір слів та літер')
    end

    it 'does not remove chinese characters' do
      expect(string_clean('汉字')).to eql('汉字')
    end
  end
end
