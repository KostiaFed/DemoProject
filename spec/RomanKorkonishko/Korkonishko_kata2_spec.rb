require './katas/RomanKorkonishko/Korkonishko_kata2.rb'

RSpec.describe '#validate_usr' do
  context 'when pass correct length' do
    it { expect(validate_usr('asddsa')).to eql(true) }
  end
  context 'when pass incorrect length' do
    it { expect(validate_usr('a')).to  eql(false) }
    it { expect(validate_usr('Hass')).to eql(false) }
    it { expect(validate_usr('Hasd_12assssssasasasasasaasasasasas')).to eql(false) }
    it { expect(validate_usr('012')).to eql(false) }
  end
  context 'when pass empty string' do
    it { expect(validate_usr('')).to eql(false) }
  end
  context 'when pass special symbol and numbers with correct length' do
    it { expect(validate_usr('____')).to eql(true) }
    it { expect(validate_usr('p1pp1')).to eql(true) }
    it { expect(validate_usr('asd43_34')).to eql(true) }
  end
  context 'when pass space between words' do
    it { expect(validate_usr('asd43 34')).to eql(false) }
  end
end
