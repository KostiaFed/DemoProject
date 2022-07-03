def square_or_square_root(arr)
  arr.map! {|a| (Math.sqrt(a) % 1 == 0 ? Math.sqrt(a) : a**2) }
  return arr
end