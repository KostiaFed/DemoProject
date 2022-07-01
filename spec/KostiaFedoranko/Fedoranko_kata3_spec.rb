def check_exam(arr1, arr2)
  points = 0;
  arr1.length.times do |i|
    if arr1[i] == arr2[i]
      points = points + 4;
    elsif arr2[i] == ""
      points = points + 0;
    else
      points = points - 1;
    end
  end
  if points < 0
    return 0
else
  return points
        end
end
