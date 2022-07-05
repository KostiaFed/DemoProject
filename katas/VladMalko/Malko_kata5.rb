# task 5 https://www.codewars.com/kata/5868b2de442e3fb2bb000119

Number = Struct.new(:number, :weight, :index)

# function that returns weight of given number
def weight(number)
  res = 0
  number.each_char { |n| res += n.to_i }
  res
end

# returns 2 closest numbers in array of Numbers
def sort_by_closest(numbers)
  closest1 = numbers[0]
  closest2 = numbers[1]
  diference = (numbers[0].weight - numbers[1].weight).abs
  buf = 0

  # if diference betwean two weights in array lower then saved, re-save it
  (1..numbers.length - 1).each do |i|
    buf = (numbers[i].weight - numbers[i - 1].weight).abs
    next unless buf < diference

    diference = buf
    closest1 = numbers[i - 1]
    closest2 = numbers[i]
  end

  [closest1, closest2]
end

def closest(strng)
  # if empty, return []
  return [] if strng.length == 0

  # create array of Number (number, weight, index) and fill it
  numbers = []
  strng = strng.split(' ')
  strng.each_with_index { |num, index| numbers.append(Number.new(num, weight(num), index)) }

  # sort array by weight
  numbers = numbers.sort_by(&:weight)
  # take first 2 closest numbers in sorted array
  closest1, closest2 = sort_by_closest(numbers)
  # if numbers the same, sort it by index
  closest1, closest2 = closest2, closest1 if (closest1.index > closest2.index) and (closest1.weight == closest2.weight)
  # complect and return it
  [[closest1.weight, closest1.index, closest1.number.to_i],
   [closest2.weight, closest2.index, closest2.number.to_i]]
end
