require './katas/DmitriyShevtsov/Shevtsov_kata3'


describe "middle" do

    it  'find middle character of a word if length is odd' do
            expect(get_middle('Hello')).to eql('l')
        end    
  
      it  'find middle character of a word if length is even' do
            expect(get_middle('Kata')).to eql('at')
        end   
      it  'find middle character of a phrase' do
            expect(get_middle('Hi, Jane, how are Y')).to eql(' ')
        end   
     it  'find string string consist of 2 symbols' do
            expect(get_middle('Hi')).to eql('Hi')
        end   
     it  'find string string consist of 1 symbol' do
            expect(get_middle('I')).to eql('I')
        end 
    it  'find string string does not consist of any symbols' do
            expect(get_middle('')).to eql(nil)
        end 
    end
