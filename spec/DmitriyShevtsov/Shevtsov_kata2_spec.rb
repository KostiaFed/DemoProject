require './katas/DmitriyShevtsov/Shevtsov_kata2'


describe "difference" do
    it  'the difference of the cuboids volumes' do
        expect(find_difference([3, 2, 5],[1, 4, 4])).to eql(14)
        expect(find_difference([9, 7, 2], [5, 2, 2])).to eql(106)
        expect(find_difference([4, 1, 3], [5, 4, 5])).to eql(88)
        end    
    end
