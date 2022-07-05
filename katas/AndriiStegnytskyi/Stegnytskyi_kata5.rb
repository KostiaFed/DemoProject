def u(n)
  arr = [1, 1]
  for i in arr.length...n
    arr[i] = arr[i - arr[i - 1]] + arr[i - arr[i - 2]]
  end
  arr.sum
end

def length_sup_u_k(n, k)
  arr = [1, 1]
  sup_counter = 0
  for i in arr.length...n
    arr[i] = arr[i - arr[i - 1]] + arr[i - arr[i - 2]]
    sup_counter += 1 if arr[i] >= k
  end
  sup_counter
end

def comp(n)
  arr = [1, 1]
  comp_counter = 0
  for i in arr.length...n
    arr[i] = arr[i - arr[i - 1]] + arr[i - arr[i - 2]]
    comp_counter += 1 if arr[i] < arr[i - 1]
  end
  comp_counter
end
