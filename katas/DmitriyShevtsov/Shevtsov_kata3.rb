def get_middle(s)
  ms = s.split('')
  t = s.length / 2 #finding half-length of the string
  t = t.to_i       #turning float to integer in case of string length being odd
 if s.length < 3   #unique case when there's no center or both leters are center
   p s
   elsif s.length >2 && s.length.even?
   p ms[t-1, 2].join
   elsif s.length > 2 && s.length.odd?
   p ms[t]
   end
end
