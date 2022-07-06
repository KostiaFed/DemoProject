# Write a method, that will get an integer array as parameter and will process every number from this array.

# Return a new array with processing every number of the input-array like this:

# If the number has an integer square root, take this, otherwise square the number.

def square_or_square_root(arr)
  arr.map! {|a| (Math.sqrt(a) % 1 == 0 ? Math.sqrt(a) : a**2) }
  return arr
end