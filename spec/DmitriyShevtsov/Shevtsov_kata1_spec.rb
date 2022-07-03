require './katas/DmitriyShevtsov/Shevtsov_kata1'

describe 'billboard' do
    it  'find out how much it will cost with default letter price ' do
        expect(billboard("Jeong-Ho Aristotelis")).to eql(600)
        end   
         
    it  'find out how much it will cost with not fixed letter price ' do
            expect(billboard("Jeong-Ho Aristotelis",10)).to eql(200)
         end    
    end
