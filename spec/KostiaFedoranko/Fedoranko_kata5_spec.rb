def zeros(int)
    k = 0
    result = 0
    if int == 0 then return 0 end
        Math.log(int, 5).to_i.times do
        k+=1
        result += int/(5**k)
    end
    return result
end