def perimeter(n)
  a = 0
  b = 1
  count = 1
  sum = 1
  while count <= n
    a, b = b, a + b
    count += 1
    sum += b
  end
  4 * sum
end
