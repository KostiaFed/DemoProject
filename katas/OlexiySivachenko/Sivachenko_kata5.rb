def lcm(*arg)
  @d = *arg
  @result = @d.reduce(1, :lcm)
  @result
end
