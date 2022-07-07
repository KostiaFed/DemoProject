require './katas/OlexiySivachenko/Sivachenko_kata1'

test = Struct.new(:input, :want)

describe '#remove' do
  context 'when passed wrong parametr' do
    it 'returns error' do
      tests = [
        test.new({}, NoMethodError),
        test.new(true, NoMethodError),
        test.new(3.456, NoMethodError),
        test.new(123, NoMethodError)
      ]

      tests.each do |t|
        expect { remove(t.input) }.to raise_error(t.want)
      end
    end
  end

  context 'when passed string parametr' do
    it 'returns empty line' do
      tests = [
        test.new('', ''),
        test.new('!!!!!!!!!', '')
      ]

      tests.each do |t|
        expect(remove(t.input)).to eql t.want
      end
    end

    it 'should remove exclamation from the end of string' do
      tests = [
        test.new('Hi!!!!!', 'Hi'),
        test.new('Hi! Hi! Hi?!', 'Hi! Hi! Hi?'),
        test.new('!?Hi?!!!', '!?Hi?')
      ]

      tests.each do |t|
        expect(remove(t.input)).to eql t.want
      end
    end

    it 'returns the same string' do
      tests = [
        test.new('Hi, 513', 'Hi, 513'),
        test.new('Hi! hi?', 'Hi! hi?'),
        test.new('!!!!Hi', '!!!!Hi')
      ]
      tests.each do |t|
        expect(remove(t.input)).to eql t.want
      end
    end
  end
end
