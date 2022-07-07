#Way to find zeroes in the end of factorial

#There i just have mathematic formula
def zeros(int)
  k = 0
   result = 0
   return 0 if int == 0
   Math.log(int, 5).to_i.times do
     k += 1
     result += int / (5**k)
   end
   result
end
