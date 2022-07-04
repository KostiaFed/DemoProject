require './katas/VladMalko/Malko_kata5.rb'

test = Struct.new(:input, :output)

describe '#closest' do

  context 'When any input given' do

    it 'FLoat' do
      tests = [
        test.new([1.1], ArgumentError),
        test.new([2.1], ArgumentError),
        test.new([3.1], ArgumentError)
      ]

      tests.each do |test|
        expect { closest(*test.input) }.to raise_error(test.output)
      end
      tests = []
    end

    it 'Integer' do
      tests = [
          test.new([1], ArgumentError),
          test.new([2], ArgumentError),
          test.new([3], ArgumentError),
          test.new([4], ArgumentError),
          test.new([5], ArgumentError)
      ]

      tests.each do |test|
        expect(closest(*test.input)).to raise_error(test.output)
      end
      tests = []
    end

    it 'Nil' do
      expect { closest(nil) }.to raise_error(ArgumentError)
    end

    it 'Zero' do
      expect(closest(0)).to raise_error(ArgumentError)
    end

    it 'Void string' do
      expect(closest("")).to eq([])
    end
  end

  context 'When true given' do
    it 'String' do
      tests = [
          test.new(["456899 50 11992 176 272293 163 389128 96 290193 85 52"], [[13, 9, 85], [14, 3, 176]]),
          test.new(["239382 162 254765 182 485944 134 468751 62 49780 108 54"], [[8, 5, 134], [8, 7, 62]]),
          test.new(["241259 154 155206 194 180502 147 300751 200 406683 37 57"], [[10, 1, 154], [10, 9, 37]]),
          test.new(["89998 187 126159 175 338292 89 39962 145 394230 167 1"], [[13, 3, 175], [14, 9, 167]]),
          test.new(["462835 148 467467 128 183193 139 220167 116 263183 41 52"], [[13, 1, 148], [13, 5, 139]])
      ]

      tests.each do |test|
        expect(closest(*test.input)).to eq(test.output)
      end
      tests = []
    end
  end
end
