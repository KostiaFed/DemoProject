def multiplication_table(n)
  (1..n).map { |element| Array.new(n) { |i| (i + 1) * element } }
end
