
require './katas/AndriiStegnytskyi/Stegnytskyi_kata3.rb'

input_positive_values = [[500, 15, 0.9],
                         [100, 10, 0.95],
                         [250, 10, 0.8],
                         [300, 25, 0.9],
                         [418, 18, 0.69]]
output_positive_values = [43, 24, 30, 20, 26]

describe '#movie' do
  context 'when using positive values' do
    input_positive_values.zip(output_positive_values).each do |input, output|
      it { expect(movie(input[0], input[1], input[2])).to eql(output) }
    end
  end

  context 'when using negative values' do
    it "returns 'Enter positive values'" do
      expect(movie(-5, -15, -0.9)).to eql('Enter positive values')
    end
  end

  context 'when using float values' do
    it "returns 'Enter whole values'" do
      expect(movie(95.5, 15, 0.9)).to eql('Enter whole values')
    end
  end

  context 'when using wrong value for percent' do
    it "returns 'Percent should be one or less'" do
      expect(movie(200, 15, 1.25)).to eql('Percent should be one or less')
    end
  end
end
