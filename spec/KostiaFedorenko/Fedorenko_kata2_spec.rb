require './katas/KostiaFedorenko/Fedorenko_kata2'

test = Struct.new(:input, :output)

describe '#converter' do
  context 'When any input given' do
    it 'String' do
      tests = [
        test.new('3', ArgumentError),
        test.new('-5', ArgumentError),
        test.new('a', ArgumentError),
        test.new('1.1', ArgumentError)
      ]

      tests.each do |test|
        expect { converter(*test.input) }.to raise_error(test.output)
      end
      tests = []
    end

    it 'Float' do
      tests = [
        test.new(3.0, 1.06),
        test.new(-5.0, -1.77),
        test.new(1.1, 0.39)
      ]

      tests.each do |test|
        expect(converter(*test.input)).to eq(test.output)
      end
      tests = []
    end

    it 'Integer' do
      tests = [
        test.new(3, 1.06),
        test.new(5, 1.77),
        test.new(7, 2.48),
        test.new(9, 3.19)
      ]

      tests.each do |test|
        expect(converter(*test.input)).to eq(test.output)
      end
      tests = []
    end

    it 'Nil' do
      expect { converter(nil) }.to raise_error(ArgumentError)
    end
  
    it 'Zero' do
      expect(converter(0)).to eq(0)
    end
  end

  context 'When true input given' do
    it 'Integer' do
      tests = [
        test.new(3, 1.06),
        test.new(5, 1.77),
        test.new(7, 2.48),
        test.new(9, 3.19)
      ]

      tests.each do |test|
        expect(converter(*test.input)).to eq(test.output)
      end
      tests = []
    end

    it '-Integer' do
      tests = [
        test.new(-3, -1.06),
        test.new(-5, -1.77),
        test.new(-7, -2.48),
        test.new(-9, -3.19)
      ]

      tests.each do |test|
        expect(converter(*test.input)).to eq(test.output)
      end
      tests = []
    end

    it 'Float' do
      tests = [
        test.new(3.2, 1.13),
        test.new(5.4, 1.91),
        test.new(7.1, 2.51),
        test.new(9.0, 3.19)
      ]

      tests.each do |test|
        expect(converter(*test.input)).to eq(test.output)
      end
      tests = []
    end

    it '-Float' do
      tests = [
        test.new(-3.2, -1.13),
        test.new(-5.4, -1.91),
        test.new(-7.1, -2.51),
        test.new(-9.0, -3.19)
      ]

      tests.each do |test|
        expect(converter(*test.input)).to eq(test.output)
      end
      tests = []
    end
  end
end