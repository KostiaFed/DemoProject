require './katas/KostiaFedorenko/Fedorenko_kata1.rb'

test = Struct.new(:input, :output)

describe '#get_volume_of_cuboid' do

  context 'When any input given' do

    it 'String' do
      tests = [
        test.new(['1', 2, 3], ArgumentError),
        test.new([1, '2', 3], ArgumentError),
        test.new([1, 2, '3'], ArgumentError),
        test.new(['1', '2', '3'], ArgumentError),
        test.new(['a', '2', '3'], ArgumentError)
      ]

      tests.each do |test|
        expect { get_volume_of_cuboid(*test.input) }.to raise_error(test.output)
      end
      tests = []
    end

    it 'FLoat' do
      tests = [
        test.new([1.1, 2, 3], ArgumentError),
        test.new([1, 2.1, 3], ArgumentError),
        test.new([1, 2, 3.1], ArgumentError),
        test.new([1.1, 2.1, 3.1], ArgumentError)
      ]

      tests.each do |test|
        expect { get_volume_of_cuboid(*test.input) }.to raise_error(test.output)
      end
      tests = []
    end

    it 'Integer' do
      tests = [
          test.new([1, 2, 3], 6),
          test.new([2, 3, 4], 24),
          test.new([3, 4, 5], 60),
          test.new([4, 5, 6], 120),
          test.new([5, 6, 7], 210)
      ]

      tests.each do |test|
        expect(get_volume_of_cuboid(*test.input)).to eq(test.output)
      end
      tests = []
    end

    it 'Nil' do
      expect { get_volume_of_cuboid(nil) }.to raise_error(ArgumentError)
    end

    it 'Zero' do
      expect(get_volume_of_cuboid(0,0,0)).to eq(0)
    end
  end
    
  context 'When true given' do
    it 'Integer' do
      tests = [
          test.new([1, 2, 3], 6),
          test.new([2, 3, 4], 24),
          test.new([3, 4, 5], 60),
          test.new([4, 5, 6], 120),
          test.new([5, 6, 7], 210)
      ]

      tests.each do |test|
        expect(get_volume_of_cuboid(*test.input)).to eq(test.output)
      end
      tests = []
    end

    it '-Integer' do
      tests = [
          test.new([-1, 2, 3], -6),
          test.new([2, -3, 4], -24),
          test.new([3, 4, -5], -60),
          test.new([4, -5, -6], 120),
          test.new([-5, -6, -7], -210)
      ]

      tests.each do |test|
        expect(get_volume_of_cuboid(*test.input)).to eq(test.output)
      end
      tests = []
    end
  end
end