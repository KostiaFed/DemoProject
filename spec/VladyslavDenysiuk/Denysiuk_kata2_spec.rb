require './katas/VladyslavDenysiuk/Denysiuk_kata2'

describe 'starting_mark' do
  input = [1.52, 1.83, 1.22, 2.13, 1.75]
  want = [9.45, 10.67, 8.27, 11.85, 10.36]
  input_wrong = [1, 5, 10, 15]
  output_wrong = [0, 0, 0, 0]

  context 'right values' do
    input.zip(want).each do |input, want|
      it { expect(starting_mark(input)).to eql(want) }
    end
  end
  context 'wrong values' do
    input_wrong.zip(output_wrong).each do |_input, _want|
      it { expect(starting_mark(_input)).to eql(_want) }
    end
  end
end
