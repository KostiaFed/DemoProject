# task 3 https://www.codewars.com/kata/sum-of-the-first-nth-term-of-series

def series_sum(n)
  result = 0.00
  demend = 1.00
  n.times do
    result += 1 / demend
    demend += 3
  end
  "#{format('%.2f', result)}"
end
