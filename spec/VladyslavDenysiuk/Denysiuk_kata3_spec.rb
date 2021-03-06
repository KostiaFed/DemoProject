require './katas/VladyslavDenysiuk/Denysiuk_kata3.rb'
describe 'sum-sequence' do
  context 'correct numbers' do
    input_correct_numbers = [[2, 6, 2], [2, 5, 1], [2, 2, 1], [2, 2, 2], [3, 7, 2], [15, 1, 3]]
    output_correct_numbers = [12, 14, 2, 2, 15, 0]
    input_correct_numbers.zip(output_correct_numbers) do |input, want|
      it { expect(sequence_sum(input[0], input[1], input[2])).to eql(want) }
    end
  end
  context 'first number is greater than the second' do
    input_begin_greater_than_end = [[3, 1, 1], [15, 4, 2], [6, 2, 2], [100, 50, 10]]
    output_begin_greater_than_end = [0, 0, 0, 0]
    input_begin_greater_than_end.zip(output_begin_greater_than_end) do |input, want|
      it { expect(sequence_sum(input[0], input[1], input[2])).to eql(want) }
    end
  end
end
