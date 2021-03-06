require './katas/AndriiStegnytskyi/Stegnytskyi_kata5.rb'

input_length_sup_u_k = [[50, 25],
                        [3332, 973],
                        [2941, 862],
                        [3177, 573],
                        [1745, 645]]
output_length_sup_u_k = [2, 1391, 1246, 2047, 474]

input_comp = [[74626],
              [71749],
              [56890],
              [60441],
              [30054]]
output_comp = [37128, 35692, 28281, 30054, 14884]

describe '#length_sup_u_k' do
  context 'when using positive values' do
    input_length_sup_u_k.zip(output_length_sup_u_k).each do |input, output|
      it { expect(length_sup_u_k(input[0], input[1])).to eql(output) }
    end
  end

  context 'when using negative values' do
    it "should return 'Enter positive values'" do
      expect(length_sup_u_k(-3, -134)).to eql('Enter positive values')
    end
  end

  context 'when using float values' do
    it "should return 'Enter whole values'" do
      expect(length_sup_u_k(2.5, 55.1)).to eql('Enter whole values')
    end
  end
end

describe '#comp' do
  context 'when using positive values' do
    input_comp.zip(output_comp).each do |input, output|
      it { expect(comp(input[0])).to eql(output) }
    end
  end

  context 'when using negative values' do
    it "should return 'Enter positive values'" do
      expect(comp(-134)).to eql('Enter positive values')
    end
  end

  context 'when using float values' do
    it "should return 'Enter whole values'" do
      expect(comp(123.123)).to eql('Enter whole values')
    end
  end
end
