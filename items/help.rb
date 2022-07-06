require_relative 'help_modificators.rb'

class Help

def run(flag_par = nil)

#### Get list of existing functions
    data = []
    File.open('./help.txt', 'r') do |file|
      file.each_line { |x| data.push(x) }
    end

    ds = []
    File.open('./descriptions.txt', 'r') do |file|
      file.each_line { |x| ds.push(x) }
    end
#### Parameter
      if(flag_par.to_i.to_s == flag_par) #number
        return numeric(flag_par.to_i, data, ds)
      elsif(flag_par == '-s'or flag_par == '' or flag_par == nil) #short
        return short(data)
      elsif(flag_par == '-d') #description
        return description(data, ds)
      else
        'Unknown modificator'
      end
    end
end
