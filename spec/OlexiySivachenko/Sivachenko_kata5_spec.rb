require './katas/OlexiySivachenko/Sivachenko_kata5'

test = Struct.new(:input, :want)

describe '#lcm' do
  context 'when passed wrong parametrs' do
    it 'returns error' do
      tests = [
        test.new([1.1], TypeError),
        test.new(['3'], TypeError),
        test.new(['2.7'], TypeError)
      ]
      tests.each do |t|
        expect { lcm(*t.input) }.to raise_error(t.want)
      end
    end
  end

  context 'returns value of lcm of <=1 integer parametrs' do
    it 'returns value of lcm of special parametrs' do
      tests = [
        test.new([], 1),
        test.new([0], 0)
      ]
      tests.each do |t|
        expect(lcm(*t.input)).to eql(t.want)
      end
    end

    it 'returns value of lcm of single parametrs' do
      tests = [
        test.new([1], 1),
        test.new([3], 3),
        test.new([2], 2)
      ]
      tests.each do |t|
        expect(lcm(*t.input)).to eql(t.want)
      end
    end
  end

  context 'returns value of lcm of >1 integer arguments' do
    it 'returns the same value as parametrs' do
      tests = [
        test.new([1, 1, 1, 1], 1),
        test.new([0, 0, 0, 0], 0),
        test.new([0, 0, 0, 0], 0)
      ]
      tests.each do |t|
        expect(lcm(*t.input)).to eql(t.want)
      end
    end

    it 'returns value of lcm' do
      tests = [
        test.new([1, 2], 2),
        test.new([1, 2, 3], 6),
        test.new([2, 6, 4], 12)
      ]
      tests.each do |t|
        expect(lcm(*t.input)).to eql(t.want)
      end
    end
  end
end
