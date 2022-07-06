# Your task is to construct a building which will be a pile of n cubes. 
# The cube at the bottom will have a volume of n^3, the cube above will 
# have volume of (n-1)^3 and so on until the top which will have a volume of 1^3.
# The parameter of the function findNb (find_nb, find-nb, findNb, ...) 
# will be an integer m and you have to return the integer n such as n^3 + 
# (n-1)^3 + ... + 1^3 = m if such a n exists or -1 if there is no such n.

# The parameter of the function findNb (find_nb, find-nb, findNb, ...) 
# will be an integer m and you have to return the integer n such 
# as n^3 + (n-1)^3 + ... + 1^3 = m if such a n exists or -1 if there is no such n.

def find_nb(m)
    n=0
    while n do
      if m > 0 
        curVol = (n+1)**3
        m -= curVol
        n+=1
      elsif m == 0 
        return n
      elsif m < 0
        return -1
      end
    end
end


describe "Build a pile of Cubes" do
    it "find_nb" do
          expect(find_nb(4183059834009)).to eql(2022)
    end
    it "find_minus1" do
      expect(find_nb(24723578342962)).to eql(-1)
end
end