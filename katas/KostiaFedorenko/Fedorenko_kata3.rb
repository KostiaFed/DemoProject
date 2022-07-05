def check_exam(arr1, arr2)
  points = 0
  arr1.length.times do |i|
    points = if arr1[i] == arr2[i]
               points + 4
             elsif arr2[i] == ''
               points + 0
             else
               points - 1
             end
  end
  if points < 0
    0
  else
    points
  end
end
