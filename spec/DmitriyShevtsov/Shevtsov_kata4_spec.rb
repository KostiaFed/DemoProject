require './katas/DmitriyShevtsov/Shevtsov_kata4'


describe "expanded_formy" do

    it  'return string in expanded form' do
            expect(expanded_form(12)).to include('10 + 2')
        end    

        it  'return string in expanded form if it contains 0' do
            expect(expanded_form(102)).to include("100 + 2")
        end   

        it  'return string in expanded form if num is in a range [1-9]' do
            expect(expanded_form(2)).to include("2")
         end   

         it  'return string in expanded number is 0' do
            expect(expanded_form(0)).to include("")
         end  

         it  'return string in expanded if num data type is string' do
            expect(expanded_form("12")).to include("10 + 2")
            expect(expanded_form("1111")).to include("1000 + 100 + 10 + 1")
         end   
    end



