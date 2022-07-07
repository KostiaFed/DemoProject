require './katas/VladMalko/Malko_kata1'

#Creating structure with keys input and out
test = Struct.new(:input, :output)

describe '#divisible_by' do
<<<<<<< Updated upstream
=======

>>>>>>> Stashed changes
  context 'When true given' do
    it 'True values' do
      #fill structure for our values
      tests = [
        test.new([[1, 2, 3, 4, 5, 6], 2], [2, 4, 6]),
        test.new([[1, 2, 3, 4, 5, 6], 3], [3, 6]),
        test.new([[0, 1, 2, 3, 4, 5, 6], 4], [0, 4]),
        test.new([[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 1], [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]),
        test.new([[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10], 17], [0])
      ]

      #go expect
      tests.each do |test|
        expect(divisible_by(*test.input)).to eq(test.output)
      end
      tests = []
    end
  end
end
