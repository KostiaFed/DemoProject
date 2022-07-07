require './katas/RomanKorkonishko/Korkonishko_kata5.rb'

RSpec.describe '#smallest' do
  test = Struct.new(:input, :output)
  tests = [
    test.new(261235, [126235, 2, 0]),
    test.new(209917, [29917, 0, 1]),
    test.new(285365, [238565, 3, 1]),
    test.new(269045, [26945, 3, 0]),
    test.new(296837, [239687, 4, 1])
  ]
  context 'find the smallest number ' do
    it 'the smallest number' do
      tests.each do |test|
        expect(smallest(*test.input)).to eql(test.output)
      end
    end
  end
end
