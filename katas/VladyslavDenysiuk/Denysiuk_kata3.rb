def sequence_sum(begin_number, end_number, step)
  sum = 0 # final sum
  counter = begin_number # increasing the counter by step each iteration
  if begin_number > end_number # error check
    0
  else 
    while counter <= end_number do
      sum += counter 
      counter += step
    end
    sum
  end
end