require './katas/VladMalko/Malko_kata2.rb'

test = Struct.new(:input, :output)

describe '#circle_area' do

  context 'When any input given' do

    #go expect with nil parameter with raise_error
    it 'Nil' do
      expect { circle_area(nil) }.to raise_error(ArgumentError)
    end

    #go expect with integer parameter with raise_error
        it 'Integer' do
      expect(circle_area(0)).to raise_error(ArgumentError)
      expect(circle_area(1)).to raise_error(ArgumentError)
    end
  end

  context 'When true given' do
    it 'Circle' do
      #fill structure for our values
      tests = [
          test.new([Circle.new(Point.new(10, 10), 30).round(6)], 2827.433388),
          test.new([Circle.new(Point.new(25, -70), 30).round(6)], 2827.433388),
          test.new([Circle.new(Point.new(-15, 5), 0).round(6)], 0),
          test.new([Circle.new(Point.new(-15, 5), 12.5).round(6)], 490.873852)
      ]

      #go expect
      tests.each do |test|
        expect(circle_area(*test.input)).to eq(test.output)
      end
      tests = []
    end
  end
end
