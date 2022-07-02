def queue_time(customers, n)
  all_tills = Array.new(n).fill(0)
  customers.each do |customer|
    index = all_tills.each_with_index.min_by { |element| element.first }.last
    all_tills[index] += customer
  end
  all_tills.max
end
