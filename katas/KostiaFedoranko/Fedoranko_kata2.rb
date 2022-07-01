def converter(mpg)
    return (mpg * 1.609344 / 4.54609188).round(2)
end

puts converter(9.0)