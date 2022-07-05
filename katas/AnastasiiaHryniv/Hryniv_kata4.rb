def stockList(listOfArt, listOfCat)
  return '' if (listOfArt.length == 0) || (listOfCat.length == 0)

  books = Hash.new(0)
  listOfArt.each do |e|
    category = e.scan(/^[A-Z]/)[0]
    count = e.scan(/\d+/)[0]
    books[category] += count.to_i
  end

  listOfCat.map do |e|
    "(#{e} : #{books[e]})"
  end.join(' - ')
end
