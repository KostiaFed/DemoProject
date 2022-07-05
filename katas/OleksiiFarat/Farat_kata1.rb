def count_positives_sum_negatives(lst)
  return [] if lst.empty?

  lst.each_with_object([0, 0]) do |n, a|
    a[0] += 1 if n > 0
    a[1] += n if n < 0
  end
end
