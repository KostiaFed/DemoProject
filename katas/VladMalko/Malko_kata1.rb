# task 1 https://www.codewars.com/kata/find-numbers-which-are-divisible-by-given-number

def divisible_by(numbers, divisor)
  numbers.each_with_object([]) { |num, result| num % divisor == 0 ? result.push(num) : nil }
end
