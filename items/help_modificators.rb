#Return string of command name with description by number.
#If command not exist return string with message

#flag_par - parameter treated as an integer
#data - array of commands
#ds - array of descriptions
def numeric(flag_par, data, ds)
<<<<<<< Updated upstream
  return 'Numeric parameter is invalid!' if flag_par > data.size or flag_par < 1

  data[flag_par - 1] + ' - ' + ds[flag_par - 1]
=======
  if(flag_par > data.size or flag_par < 1) #number of command limits
    return 'Numeric parameter is invalid!'
  end
    return data[flag_par - 1] + ' - ' + ds[flag_par - 1]
>>>>>>> Stashed changes
end

#Return string of numbered list of commands

#data - array of commands
#ret_str - string to return
#iterator - iterator to numbering list
def short(data)
  ret_str = ''
  iterator = 0
  data.each do |n|
    iterator += 1
    ret_str += iterator.to_s + '. ' + n
  end
  ret_str
end

#Return string of numbered list of commands and their description

#data - array of commands
#ds - array of descriptions
#ret_str - string to return
#iterator - iterator to numbering list
def description(data, ds)
  ret_str = ''
  iterator = 0
  data.each do |n|
    iterator += 1
    ret_str += iterator.to_s + '. ' + n + ' - ' + ds[iterator - 1]
  end
  ret_str
end
