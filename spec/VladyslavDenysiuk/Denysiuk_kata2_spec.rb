require './katas/VladyslavDenysiuk/Denysiuk_kata2.rb'

describe 'starting_mark' do
  context 'right values' do
    input = [1.52, 1.83, 1.22, 2.13, 1.75]
    want = [9.45, 10.67, 8.27, 11.85, 10.36]
    input.zip(want).each do |input, want|
      it { expect(starting_mark(input)).to eql(want) }
    end
  end
end
