require './katas/VladyslavDenysiuk/Denysiuk_kata4'

describe 'f' do
  input = [1, 2, 10, 100]
  want = [0, 1, -335, -3_844_950]
  input.zip(want).each do |input, want|
    describe 'given input' do
      it { expect(f(input)).to eql(want) }
    end
  end
end
