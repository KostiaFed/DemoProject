def starting_mark(height)
  # Slope intersept: y = mx + b, where x = height
  # b = y - mx
  # m = (y2 - y1) / (x2 - x1)
  m = (10.67 - 9.45) / (1.83 - 1.52)
  (m * height + 9.45 - m * 1.52).round(2) # round(2) to get two digits after comma 
end