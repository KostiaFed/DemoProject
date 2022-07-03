def balance(b)
  b.gsub!(/[^\w\d.\x20\r\n]+/m,"")
  k=1
  sum=0.00
  exp=0.00
  res=""
  b.each_line() do |s|
    p s.strip!
    ar=(s.strip!!=nil) ? s.strip!.split : s.split
    ar.each do |a| 
      if !a.empty?
        if k==1
          sum=a.to_f
          res << "Original Balance: " << sprintf("%.2f",sum) << "\r\n"
        else    
          res << a.to_s << " " unless (k%3)==1
          res << sprintf("%.2f",a.to_f) << " " if (k%3)==1
          exp+=a.to_f if (k%3)==1
          res << "Balance " << sprintf("%.2f", (sum-exp)) << "\r\n" if (k%3)==1
        end  
        k+=1
      end
    end
  end 
    res << "Total expense  " << sprintf("%.2f",exp) << "\r\n"
    k=((k-1).fdiv(3)).to_i
    res << "Average expense  " << sprintf("%.2f",exp/k)
    res
end
