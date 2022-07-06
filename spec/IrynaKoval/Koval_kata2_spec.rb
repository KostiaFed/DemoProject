# Write a method, that will get an integer array as parameter and 
# will process every number from this array.

def square_or_square_root(arr)
    arr.map! {|a| (Math.sqrt(a) % 1 == 0 ? Math.sqrt(a) : a**2) }
    return arr
  end

  describe "To square(root)" do
    it "arrayInteger to float" do
          expect(square_or_square_root([4, 3, 9, 7, 2, 1])).to eql([2.0, 9, 3.0, 49, 4, 1.0])
    end
  #   it "arrayInteger to int" do
  #         expect(square_or_square_root([1, 2, 3, 4, 5, 6])).to eql([1, 4, 9, 2, 25, 36])
  # end
end


