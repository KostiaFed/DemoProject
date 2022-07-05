def billboard(name, price = 30)
  upd = name.split('')
  ch = upd.map { |_n| n = price }
  ch.inject(0) { |x, y| x + y }
end
