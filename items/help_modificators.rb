def numeric(flag_par, data, ds)
  return 'Numeric parameter is invalid!' if flag_par > data.size or flag_par < 1

  data[flag_par - 1] + ' - ' + ds[flag_par - 1]
end

def short(data)
  ret_str = ''
  iterator = 0
  data.each do |n|
    iterator += 1
    ret_str += iterator.to_s + '. ' + n
  end
  ret_str
end

def description(data, ds)
  ret_str = ''
  iterator = 0
  data.each do |n|
    iterator += 1
    ret_str += iterator.to_s + '. ' + n + ' - ' + ds[iterator - 1]
  end
  ret_str
end
