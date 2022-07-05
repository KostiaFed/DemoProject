require './katas/KostiaFedorenko/Fedorenko_kata5'

test = Struct.new(:input, :output)

describe '#zeros' do
  context 'Correct input' do
    it 'Integer' do
      tests = [
        test.new(0, 0),
        test.new(6, 1),
        test.new(30, 7)
      ]

      tests.each do |test|
        expect(zeros(*test.input)).to eq(test.output)
      end
      tests = []
    end

    it 'Float' do
      tests = [
        test.new(4.5, 0),
        test.new(15.3, 3.06),
        test.new(30.0, 7)
      ]

      tests.each do |test|
        expect(zeros(*test.input)).to eq(test.output)
      end
      tests = []
    end

    it '-Integer' do
      tests = [
        test.new(-0, 0),
        test.new(-6, -1),
        test.new(-30, -7)
      ]

      tests.each do |test|
        expect(zeros(*test.input)).to eq(test.output)
      end
      tests = []
    end

    it '-Float' do
      tests = [
        test.new(-4.5, 0),
        test.new(-15.3, -3.06),
        test.new(-30.0, -7)
      ]

      tests.each do |test|
        expect(zeros(*test.input)).to eq(test.output)
      end
      tests = []
    end
  end

  context 'Incorrect input' do
    it 'Empty' do
      expect { zeros }.to raise_error(ArgumentError)
    end

    it 'String' do
      tests = [
        test.new('', 0),
        test.new('Hello', 0),
        test.new('-Hello', 0),
        test.new('-0', 0),
        test.new('0', 0),
        test.new('-0.0', 0)
      ]

      tests.each do |test|
        expect(zeros(*test.input)).to eq(test.output)
      end
      tests = []
    end

    it 'Array' do
      tests = [
        test.new([], 0),
        test.new([1, 2, 3], 0),
        test.new([-1, -2, -3], 0),
        test.new([0, 0, 0], 0),
        test.new([-0, -0, -0], 0),
        test.new([-0.0, -0.0, -0.0], 0)
      ]

      tests.each do |test|
        expect(zeros(*test.input)).to eq(test.output)
      end
      tests = []
    end
  end
end
