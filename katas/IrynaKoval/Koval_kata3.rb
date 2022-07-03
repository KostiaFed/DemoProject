def replicate(times, number)
    if times<=0
      return []
    end
    res = replicate(times - 1, number)
    res.append(number)
    return res
end