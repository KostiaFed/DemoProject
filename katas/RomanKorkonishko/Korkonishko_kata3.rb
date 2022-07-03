def easyline(n)
  return 1 if n<=0
  sum=0
  val=(1..n).inject(:*) 
   
  for i in 0..n
    sum+=(val/((1..i).inject(1,:*)*(1..n-i).inject(1,:*))).to_i**2
  end
  sum
end
