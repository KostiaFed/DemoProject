class String
  def is_integer?
    self.to_i.to_s == self
  end
  def is_float?
    self.to_f.to_s == self
  end
end

##############
def pointing(hash, name, scores, values)
  hash = antinils(values, hash, name)

  hash[name[0]]["Scored"] += scores[0].to_i
  hash[name[1]]["Scored"] += scores[1].to_i
  hash[name[0]]["Conceded"] += scores[1].to_i
  hash[name[1]]["Conceded"] += scores[0].to_i
  if scores[0].to_i > scores[1].to_i
    hash[name[0]]["Points"] += 3
    hash[name[0]]["W"] += 1
    hash[name[1]]["L"] += 1
  elsif scores[0].to_i < scores[1].to_i
    hash[name[1]]["Points"] += 3
    hash[name[0]]["L"] += 1
    hash[name[1]]["W"] += 1
  else
    hash[name[0]]["Points"] += 1
    hash[name[1]]["Points"] += 1
    hash[name[0]]["D"] += 1
    hash[name[1]]["D"] += 1
  end

  return hash
end

##############
def antinils(values, hash, name)
  values.length.times do |k|
    2.times do |t|
      if hash[name[t]][values[k]] == nil
        hash[name[t]][values[k]] = 0
      end
    end
  end
    return hash
end

################
  def nba_cup(r, team)
    if team == ""
      return ""
    end
    hash = Hash.new
    name = Array.new
    scores = Array.new
    values = ["W","D", "L", "Scored", "Conceded", "Points"]
    side = 0
    arr1 = r.split(",")

    arr1.length.times do |i|
      arr2 = arr1[i].split(" ")
      name[0] = ""
      name[1] = ""
      scores[0] = 0
      scores[1] = 0

      arr2.length.times do |j|
        if arr2[j].is_float?
          return "Error(float number):" + arr1[i]
        end
        if arr2[j].is_integer?
          scores[side] = arr2[j]
          if hash[name[side]] == nil
          hash[name[side]] = Hash.new
          end

          if side == 1
            side = 0
            hash = pointing(hash, name, scores, values)
          else
            side = 1
          end

        else
          if name[side] != ""
          name[side] += " " + arr2[j]
          else
          name[side] += arr2[j]
          end
        end
      end
    end

if team == ""
return ""
elsif hash[team].nil?
  return team + ":This team didn't play!"
else
  returnstring = team + ":"
  values.length.times do |k|
    if values.length != k+1
    returnstring += values[k] + "=" + hash[team][values[k]].to_s + ";"
      else
      returnstring += values[k] + "=" + hash[team][values[k]].to_s
      end
  end
  return returnstring
end
end
