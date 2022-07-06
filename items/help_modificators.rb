def numeric(flag_par, data, ds)
  if(flag_par > data.size or flag_par < 1)
    return 'Numeric parameter is invalid!'
  end
    return data[flag_par - 1] + ' - ' + ds[flag_par - 1]
end

def short(data)
  ret_str = ''
  iterator = 0
        data.each do |n|
          iterator += 1
          ret_str += iterator.to_s + '. ' + n
         end
  return ret_str
end

def description(data, ds)
  ret_str = ''
  iterator = 0
        data.each do |n|
          iterator += 1
          ret_str += iterator.to_s + '. ' + n + ' - ' + ds[iterator - 1]
         end
  return ret_str
end
