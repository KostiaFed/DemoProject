#task 4 https://www.codewars.com/kata/5df754981f177f0032259090/ruby

def mant_exp(a_number, digits_number)
    buf = a_number.to_f
    count = 0
  
    if a_number.to_i.to_s.length < digits_number
  
      until buf.to_i.to_s.length == digits_number do
        count +=1
        buf = a_number.to_f * 10 ** count
      end
  
    else
  
      until buf.to_i.to_s.length == digits_number do
        count += 1
        buf = (a_number.to_f / (10**count))
      end
  
      count *= -1
    end
  
    "#{buf.to_i}P#{count*-1}"
end