def expanded_form(num)
  mnum = [] #new empty array, where we'll add all modified parts of equation
  x = num.digits #making an array which consists of each digit from initial num

  x.each_with_index do |i, index|
if i == 0
  else
    x = i.to_s + '0' * index
    mnum << x
    end
    end


  mnum.reverse.join(' + ') #taking and summing all elements of array
end
