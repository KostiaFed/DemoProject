# Save the animals by switching them back. 
# You will be given an array which will have three values (tail, body, head). 
# It is your job to re-arrange the array so that the animal is the right way round (head, body, tail).

def fix_the_meerkat(str)
  treated_meerkat = str.reverse
  return(treated_meerkat)
end

describe "an example" do
  it "itring" do
        fix_the_meerkat("string").should == "gnirts"
  end
  it "integer" do
        fix_the_meerkat([1, 2, 3, 4, 5]).should == [5, 4, 3, 2, 1]
  end
  it "arrayString" do
  fix_the_meerkat(["bottom", "middle", "top"]).should == ["top", "middle", "bottom"]
  end
end



