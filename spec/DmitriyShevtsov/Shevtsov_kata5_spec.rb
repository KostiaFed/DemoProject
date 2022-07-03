require 'perimeter'

describe 'perimeter' do

context 'when there\'s one more square' do
  it 'returns sum of the square perimeters' do
    expect(perimeter(5)).to eq(80)
    expect(perimeter(7)).to eq(216)
    expect(perimeter(20)).to eq(114624)
    expect(perimeter(30)).to eq(14098308)
    expect(perimeter(100)).to eq(6002082144827584333104)
  end
end

end
