require './katas/VladyslavDenysiuk/Denysiuk_kata1'

describe 'litres' do
  input_less_than_one = [0.1, 0.2, 0.3, 0.4]
  output_less_than_one = [0.05, 0.1, 0.15, 0.2]

  input_negative_values = [-1, -2, -3, -4]
  output_negative_values = [nil, nil, nil, nil]

  input_big_values = [1000, 20_000, 50_000]
  output_big_values = [500, 10_000, 25_000]

  input_strings = ['some string', 'some string with number 1']
  output_strings = [nil, nil]

  input_random_values = [2, 1, 10, 1.4, 12.3, 0.82, 11.8, 1787, 0]
  output_random_vaulues = [1, 0, 5, 0, 6, 0, 5, 893, 0]

  context 'random values' do
    input_random_values.zip(output_random_vaulues).each do |input, want|
      it { expect(litres(input)).to eql(want) }
    end
  end

  context 'less than one' do
    input_less_than_one.zip(output_less_than_one).each do |input, want|
      it { expect(litres(input)).to eql(want) }
    end
  end

  context 'negative values' do
    input_negative_values.zip(output_negative_values).each do |input, want|
      it { expect(litres(input)).to eql(want) }
    end
  end

  context 'big values' do
    input_big_values.zip(output_big_values).each do |input, want|
      it { expect(litres(input)).to eql(want) }
    end
  end
  context 'input strings' do
    input_strings.zip(output_strings).each do |input, want|
      it { expect(litres(input)).to eql(want) }
    end
  end
end
