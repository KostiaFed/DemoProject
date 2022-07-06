def am_I_Wilson(p)
  return (factorial(p-1) + 1) % p**2 == 0;
end

def factorial(n)
  if n == 0
    1
  else
    n * factorial(n-1)
  end
end
