require './katas/KostiaFedorenko/Fedorenko_kata3'

Test = Struct.new(:input, :output)

describe '#check_exam' do

  it 'Correct input' do
    tests = [
      Test.new([["a", "a", "b", "b"], ["a", "c", "b", "d"]], 6),
      Test.new([["a", "a", "c", "b"], ["a", "a", "b",  ""]], 7),
      Test.new([["a", "a", "b", "c"], ["a", "a", "b", "c"]], 16),
      Test.new([["b", "c", "b", "a"], ["",  "a", "a", "c"]], 0),
      Test.new([["a", "a", "b", "b"], ["a", "a", "", "b"]], 12)
    ]

    tests.each do |test|
      expect(check_exam(*test.input)).to eq(test.output)
    end
    tests = []
  end

  context 'Wrong input' do
    it 'Lenght' do
      tests = [
        Test.new([['a', 'a', 'b', 'b', 'a'], ['a', 'a', 'b', 'b', 'a', 'c']], 'The arrays must have the same length'),
        Test.new([['a', 'a', 'a', 'a', 'a'], ['a', 'a', 'a', 'a']], 'The arrays must have the same length'),
        Test.new([['a', 'a', 'a', 'a'], ['a', 'a', 'a', 'a', 'a']], 'The arrays must have the same length'),
        Test.new([['a', 'a', 'a', 'a', 'a', 'a'], ['a', 'a', 'a', 'a', 'a']], 'The arrays must have the same length'),
      ]

      tests.each do |test|
        expect { check_exam(*test.input) }.to raise_error(test.output)
      end
      tests = []
    end

    it 'Letters' do
      tests = [
        Test.new([['a', 'a', 'b', 'b'], ['a', 'a', 1, 'b', 'c']], 'The arrays must have only letters'),
        Test.new([['a', 'a', 2, 'b'], ['a', 'a', 'b', 'b', 'c']], 'The arrays must have only letters'),
        Test.new([[1, 'a', 'b', 'b'], [1, 'a', 'b', 'b', 'c']], 'The arrays must have only letters'),
        Test.new([['a', 'a', '%', 'b'], [1, 'a', '%', 'b', 'c']], 'The arrays must have only letters'),
      ]

      tests.each do |test|
        expect { check_exam(*test.input) }.to raise_error(test.output)
      end
      tests = []
    end
  end
end