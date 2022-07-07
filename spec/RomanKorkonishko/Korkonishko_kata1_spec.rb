require './katas/RomanKorkonishko/Korkonishko_kata1.rb'

 RSpec.describe '#duty_free' do
   context 'when pass correct values' do
     it 'returns the amount of bottles' do
       expect(duty_free(12, 50, 1000)).to eql(166)
       expect(duty_free(17, 10, 500)).to eql(294)
       expect(duty_free(15, 20, 50)).to eql(16)
       expect(duty_free(10, 100, 100)).to eql(10)
     end
   end
   context 'when pass integer' do
     it 'returns an integer' do
       expect(duty_free(12, 40, 900)).to be_a(Integer)
     end
   end
 end
