require './katas/VladMalko/Malko_kata4.rb'

test = Struct.new(:input, :output)

describe '#mant_exp' do
  context 'When true given' do
    it 'True values' do
      tests = [
          test.new(["0.06", 10], "6000000000P-11"),
          test.new(["72.0", 12], "720000000000P-10"),
          test.new(["1.0", 5], "10000P-4"),
          test.new(["123456.0", 4], "1234P2")
      ]

      tests.each do |test|
        expect(mant_exp(*test.input)).to eq(test.output)
      end
      tests = []
    end
  end
end
