# The function should return an array containing repetitions 
# of the number argument. For instance, replicate(3, 5) should return [5,5,5]. 
# If the times argument is negative, return an empty array.


def replicate(times, number)
    if times<=0
      return []
    end
    res = replicate(times - 1, number)
    res.append(number)
    return res
end

describe "Recursive Replication" do
    it "Recursive Replication positive number" do
      expect(replicate(3,5)).to eql([5, 5, 5])
    end
    it "Recursive Replication with zero" do
      expect(replicate(0,12)).to eql([])
    end
    it "Recursive Replication with negative number" do
      expect(replicate(-1,12)).to eql([])
end
end