require './katas/OlexiySivachenko/Sivachenko_kata3.rb'

Test = Struct.new(:input, :want)

describe '#stray' do
    it 'returns nil if no odd element or > 1 ' do
        tests = [
                Test.new([1, 2, 1, 1, 2], nil),
                Test.new([10, 10, 10, 10], nil),
        ]
                    
        tests.each do |t| 
            expect(stray(t.input)).to eql(t.want)
        end
    end
    it 'returns result if only 1 odd number' do
        tests = [
        Test.new([1, 1, 2], 2),
        Test.new([7, 7, 7, 7, 7, 7, 5, 7, 7, 7, 7], 5),
        Test.new([0, 1, 1, 1, 1, 1], 0),
            ]
        tests.each do |t| 
            expect(stray(t.input)).to eql(t.want)
        end
    end
end