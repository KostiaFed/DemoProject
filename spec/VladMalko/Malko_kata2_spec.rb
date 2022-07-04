require './katas/VladMalko/Malko_kata2.rb'

test = Struct.new(:input, :output)

describe '#circle_area' do

  context 'When any input given' do

    it 'Nil' do
      expect { circle_area(nil) }.to raise_error(ArgumentError)
    end

    it 'Zero' do
      expect(circle_area(0)).to raise_error(ArgumentError)
    end
  end

  context 'When true given' do
    it 'Circle' do
      tests = [
          test.new([Circle.new(Point.new(10, 10), 30).round(6)], 2827.433388),
          test.new([Circle.new(Point.new(25, -70), 30).round(6)], 2827.433388),
          test.new([Circle.new(Point.new(-15, 5), 0).round(6)], 0),
          test.new([Circle.new(Point.new(-15, 5), 12.5).round(6)], 490.873852)
      ]

      tests.each do |test|
        expect(circle_area(*test.input)).to eq(test.output)
      end
      tests = []
    end
  end
end
