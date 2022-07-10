def duty_free(price, discount, holiday_cost)
  val=(price*(discount.between?(1,100) ? discount : 100).fdiv(100))
    return (holiday_cost/val).to_i
end

price=ARGV[0].downcase=='nil' ? 0 : ARGV[0].to_i 
discount=ARGV[1].downcase=='nil' ? 0 : ARGV[1].to_i 
holiday_cost = ARGV[2].downcase=='nil' ? 0 : ARGV[2].to_i 

p duty_free(price, discount, holiday_cost)