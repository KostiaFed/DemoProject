def smallest(n)
  ss=(n.to_s).chars if n!=nil
  i,j=0,0
  res=[].push(ss.join("").to_i).push(i).push(j)
  ss.each_with_index do |x,i| 
  s=[].replace(ss)
  s.delete_at(i)
  s.insert(0,x) 
    for j in (0..s.length-1)
       if res[0].to_i>s.join("").to_i    
        res=[].push(s.join("").to_i).push(i).push(j) 
       end  
      s[j],s[j+1]=s[j+1],s[j] if j<s.length-1
    end  
  end  
  res
end

n=ARGV[0].downcase=='nil' ? 0 : ARGV[0].to_i 

p smallest