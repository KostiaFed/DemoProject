require './katas/OlexiySivachenko/Sivachenko_kata1.rb'

Test = Struct.new(:input, :want)

describe '#remove' do

  context 'when passed wrong parametr' do
      it 'returns error' do
      tests = [
      Test.new({ }, NoMethodError),
      Test.new(true, NoMethodError),
      Test.new(3.456, NoMethodError),
      Test.new(123, NoMethodError),
      ]
      
      tests.each do |t| 
        expect{remove(t.input)}.to raise_error(t.want)
      end
      tests = []
    end
  end

  context 'when passed string parametr' do
    
    it 'returns empty line' do
      tests = [
      Test.new('', ''),
      Test.new('!!!!!!!!!', ''),
      ]
      
      tests.each do |t| 
        expect(remove(t.input)).to eql t.want
      end
      tests = []
    end

    it 'should remove exclamation from the end of string' do
      tests = [
      Test.new('Hi!!!!!', 'Hi'),
      Test.new('Hi! Hi! Hi?!', 'Hi?'),
      Test.new('!?Hi?!!!', '!?Hi?'),
      ]
      tests.each do |t| 
        expect(remove(t.input)).to eql t.want
      end
      tests = []
    end

    it 'returns the same string' do
      tests = [
      Test.new('Hi, 513', 'Hi, 513'),
      Test.new('Hi! hi?', 'Hi! hi?'),
      Test.new('!!!!Hi', '!!!!Hi'),
      ]
      tests.each do |t| 
        expect(remove(t.input)).to eql t.want
      end 
      tests = []
    end

  end
end