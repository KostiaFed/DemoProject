require './katas/OlexiySivachenko/Sivachenko_kata4.rb'

Test = Struct.new(:input, :want)

describe '#multiplication_table' do

    context 'when passed wrong parametr' do
        it 'returs error' do
            tests = [
                    Test.new('3', ArgumentError),
                    Test.new({}, ArgumentError),
                    Test.new('Rchgsj', ArgumentError),
            ]
            tests.each do |t| 
                expect{multiplication_table(t.input)}.to raise_error(t.want)
            end
        end  
    end

    context 'when passed numeric parametr'do 
        it 'returns array' do
            tests = [
                    Test.new(3, Array),
                    Test.new(5, Array),
            ]
            tests.each do |t| 
                expect(multiplication_table(t.input)).to be_instance_of(t.want)
            end
        end

        it 'returns multiplication table if passed parametr is float' do
            tests = [
                    Test.new(2.1, [[1,2],[2,4]]),
                    Test.new(3.3, [[1,2,3],[2,4,6],[3,6,9]]),
                    Test.new(5.2, [[1,2,3,4,5],[2,4,6,8,10],[3,6,9,12,15],[4,8,12,16,20],[5,10,15,20,25]]),
            ]
            tests.each do |t| 
                expect(multiplication_table(t.input)).to eql(t.want)
            end
        end 

        it 'returns multiplication table if passed parametr is integer' do
            tests = [
                    Test.new(2, [[1,2],[2,4]]),
                    Test.new(3, [[1,2,3],[2,4,6],[3,6,9]]),
                    Test.new(5, [[1,2,3,4,5],[2,4,6,8,10],[3,6,9,12,15],[4,8,12,16,20],[5,10,15,20,25]]),
            ]
            tests.each do |t| 
                expect(multiplication_table(t.input)).to eql(t.want)
            end
        end
    end
end