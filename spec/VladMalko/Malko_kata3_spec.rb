require './katas/VladMalko/Malko_kata3'

#Creating structure with keys input and out
test = Struct.new(:input, :output)

describe '#series_sum' do
  context 'When any input given' do
    it 'String' do
      #fill structure for our values
      tests = [
        test.new(['1'], ArgumentError),
        test.new(['2'], ArgumentError),
        test.new(['3'], ArgumentError),
        test.new(['3a'], ArgumentError),
        test.new(['a'], ArgumentError)
      ]

      tests.each do |test|
        expect { series_sum(*test.input) }.to raise_error(test.output)
      end
      tests = []
    end

    it 'FLoat' do
      #fill structure for our values
      tests = [
        test.new([1.1], ArgumentError),
        test.new([2.1], ArgumentError),
        test.new([3.1], ArgumentError),
        test.new([2.1], ArgumentError)
      ]

      tests.each do |test|
        expect { series_sum(*test.input) }.to raise_error(test.output)
      end
      tests = []
    end

    it 'Integer' do
      #fill structure for our values
      tests = [
        test.new([1], '1.00'),
        test.new([2], '1.25'),
        test.new([3], '1.39')
      ]

      tests.each do |test|
        expect(series_sum(*test.input)).to eq(test.output)
      end
      tests = []
    end

    it 'Nil' do
      expect { series_sum(nil) }.to raise_error(ArgumentError)
    end

    it 'Zero' do
      expect(series_sum(0)).to eq('0.00')
    end
  end
end
