def perimeter(n)
  a, b, count, sum = 0, 1, 1, 1
  while count <= n
    a, b = b, a + b
    count += 1
    sum += b
  end
  4 * sum
end
