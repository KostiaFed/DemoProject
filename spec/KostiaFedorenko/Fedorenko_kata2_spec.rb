require './katas/KostiaFedorenko/Fedorenko_kata2'

Test = Struct.new(:input, :output)

describe '#converter' do
  context 'When any input given' do
    it 'String' do
      tests = [
        Test.new('3', ArgumentError),
        Test.new('-5', ArgumentError),
        Test.new('a', ArgumentError),
        Test.new('1.1', ArgumentError)
      ]

      tests.each do |test|
        expect { converter(*test.input) }.to raise_error(test.output)
      end
      tests = []
    end

    it 'Float' do
      tests = [
        Test.new(3.0, 1.06),
        Test.new(-5.0, -1.77),
        Test.new(1.1, 0.39)
      ]

      tests.each do |test|
        expect(converter(*test.input)).to eq(test.output)
      end
      tests = []
    end

    it 'Integer' do
      tests = [
        Test.new(3, 1.06),
        Test.new(5, 1.77),
        Test.new(7, 2.48),
        Test.new(9, 3.19)
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
        Test.new(3, 1.06),
        Test.new(5, 1.77),
        Test.new(7, 2.48),
        Test.new(9, 3.19)
      ]

      tests.each do |test|
        expect(converter(*test.input)).to eq(test.output)
      end
      tests = []
    end

    it '-Integer' do
      tests = [
        Test.new(-3, -1.06),
        Test.new(-5, -1.77),
        Test.new(-7, -2.48),
        Test.new(-9, -3.19)
      ]

      tests.each do |test|
        expect(converter(*test.input)).to eq(test.output)
      end
      tests = []
    end

    it 'Float' do
      tests = [
        Test.new(3.2, 1.13),
        Test.new(5.4, 1.91),
        Test.new(7.1, 2.51),
        Test.new(9.0, 3.19)
      ]

      tests.each do |test|
        expect(converter(*test.input)).to eq(test.output)
      end
      tests = []
    end

    it '-Float' do
      tests = [
        Test.new(-3.2, -1.13),
        Test.new(-5.4, -1.91),
        Test.new(-7.1, -2.51),
        Test.new(-9.0, -3.19)
      ]

      tests.each do |test|
        expect(converter(*test.input)).to eq(test.output)
      end
      tests = []
    end
  end
end