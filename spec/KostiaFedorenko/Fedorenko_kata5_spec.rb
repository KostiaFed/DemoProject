require './katas/KostiaFedorenko/Fedorenko_kata5'

Test = Struct.new(:input, :output)

describe '#zeros' do

  context 'Correct input' do
    it 'Integer' do
      tests = [
        Test.new(0, 0),
        Test.new(6, 1),
        Test.new(30, 7)
      ]

      for test in tests
        expect(zeros(test.input)).to eq(test.output)
      end
    end

    it 'Float' do
      tests = [
        Test.new(4.5, 0),
        Test.new(15.3, 3.06),
        Test.new(30.0, 7)
      ]

      for test in tests
        expect(zeros(test.input)).to eq(test.output)
      end
    end

    it '-Integer' do
      tests = [
        Test.new(-0, 0),
        Test.new(-6, -1),
        Test.new(-30, -7)
      ]

      for test in tests
        expect(zeros(test.input)).to eq(test.output)
      end
    end

    it '-Float' do
      tests = [
        Test.new(-4.5, 0),
        Test.new(-15.3, -3.06),
        Test.new(-30.0, -7)
      ]

      for test in tests
        expect(zeros(test.input)).to eq(test.output)
      end
    end
  end

  context 'Incorrect input' do
    it 'Empty' do
      expect { zeros() }.to raise_error(ArgumentError)
    end

    it 'String' do
      tests = [
        Test.new("", 0),
        Test.new("Hello", 0),
        Test.new("-Hello", 0),
        Test.new("-0", 0),
        Test.new("0", 0),
        Test.new("-0.0", 0)
      ]

      for test in tests
        expect(zeros(test.input)).to eq(test.output)
      end
    end

    it 'Array' do
      tests = [
        Test.new([], 0),
        Test.new([1, 2, 3], 0),
        Test.new([-1, -2, -3], 0),
        Test.new([0, 0, 0], 0),
        Test.new([-0, -0, -0], 0),
        Test.new([-0.0, -0.0, -0.0], 0)
      ]

      for test in tests
        expect(zeros(test.input)).to eq(test.output)
      end
    end
  end
end