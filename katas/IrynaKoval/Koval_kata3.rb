def replicate(times, number)
  return [] if times <= 0

  res = replicate(times - 1, number)
  res.append(number)
  res
end
