def duty_free(price, discount, holiday_cost)
  val = (price * discount).fdiv(100)
  (holiday_cost / val).to_i
end
