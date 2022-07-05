def stray(numbers)
  counts = numbers.group_by { |i| i }.map { |k, v| [k, v.count] }
  count = Hash[*counts.flatten]
  count.key(1)
end
