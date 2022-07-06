def find_difference(a, b)
  avol = a[0] * a[1] * a[2]
  bvol = b[0] * b[1] * b[2]
  if avol > bvol
    avol - bvol
    elsif avol < bvol
    bvol - avol
    else 0
    end
end
