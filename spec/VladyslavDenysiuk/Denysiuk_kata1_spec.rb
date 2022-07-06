require './katas/VladyslavDenysiuk/Denysiuk_kata1.rb'

describe 'litres' do
  context 'random values' do
    input_random_values = [2, 1, 10, 1.4, 12.3, 0.82, 11.8, 1787, 0]
    output_random_vaulues = [1, 0, 5, 0, 6, 0, 5, 893, 0]
    input_random_values.zip(output_random_vaulues).each do |input, want|
      it { expect(litres(input)).to eql(want) }
    end
  end
  context 'big values' do
    input_big_values = [1000, 20_000, 50_000]
    output_big_values = [500, 10_000, 25_000]
    input_big_values.zip(output_big_values).each do |input, want|
      it { expect(litres(input)).to eql(want) }
    end
  end
end
