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