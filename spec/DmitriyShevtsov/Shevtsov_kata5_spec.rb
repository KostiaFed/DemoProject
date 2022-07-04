require './katas/DmitriyShevtsov/Shevtsov_kata5'

describe "incrementer" do

    it  'If the string already ends with a number' do
            expect(increment_string('string22')).to eql('string23')
        end  

    it  'If the string does not end with a number' do
            expect(increment_string('string')).to eql('string1')
        end    

     it  'If in the string number ends with a 9' do
            expect(increment_string('string9')).to eql('string10')
            expect(increment_string('string99')).to eql('string100')
        end   
    it  'If in the string before number we have 0' do
            expect(increment_string('string02')).to eql('string03')
            expect(increment_string('string00')).to eql('string01')

        end  
    it  'If in the string does not include any data' do
            expect(increment_string('')).to eql('1')
        end  

    it  'If in the string starts with number' do
            expect(increment_string('1string')).to eql('1string1')
        end  
    end
