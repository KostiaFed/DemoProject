<<<<<<< Updated upstream
class String
  def is_integer?
    to_i.to_s == self
  end

  def is_float?
    to_f.to_s == self
  end
end

##############
def pointing(hash, name, scores, values)
  hash = antinils(values, hash, name)

  hash[name[0]]['Scored'] += scores[0].to_i
  hash[name[1]]['Scored'] += scores[1].to_i
  hash[name[0]]['Conceded'] += scores[1].to_i
  hash[name[1]]['Conceded'] += scores[0].to_i
  if scores[0].to_i > scores[1].to_i
    hash[name[0]]['Points'] += 3
    hash[name[0]]['W'] += 1
    hash[name[1]]['L'] += 1
  elsif scores[0].to_i < scores[1].to_i
    hash[name[1]]['Points'] += 3
    hash[name[0]]['L'] += 1
    hash[name[1]]['W'] += 1
  else
    hash[name[0]]['Points'] += 1
    hash[name[1]]['Points'] += 1
    hash[name[0]]['D'] += 1
    hash[name[1]]['D'] += 1
  end

  hash
end

##############
def antinils(values, hash, name)
  values.length.times do |k|
    2.times do |t|
      hash[name[t]][values[k]] = 0 if hash[name[t]][values[k]].nil?
    end
  end
  hash
end

################
def nba_cup(r, team)
  return '' if team == ''

  hash = {}
  name = []
  scores = []
  values = %w[W D L Scored Conceded Points]
  side = 0
  arr1 = r.split(',')

  arr1.length.times do |i|
    arr2 = arr1[i].split(' ')
    name[0] = ''
    name[1] = ''
    scores[0] = 0
    scores[1] = 0

    arr2.length.times do |j|
      return 'Error(float number):' + arr1[i] if arr2[j].is_float?

      if arr2[j].is_integer?
        scores[side] = arr2[j]
        hash[name[side]] = {} if hash[name[side]].nil?

        if side == 1
          side = 0
          hash = pointing(hash, name, scores, values)
        else
          side = 1
        end

      else
        name[side] += if name[side] != ''
                        ' ' + arr2[j]
                      else
                        arr2[j]
                      end
      end
    end
  end

  if team == ''
    ''
  elsif hash[team].nil?
    team + ":This team didn't play!"
  else
    returnstring = team + ':'
    values.length.times do |k|
      returnstring += if values.length != k + 1
                        values[k] + '=' + hash[team][values[k]].to_s + ';'
                      else
                        values[k] + '=' + hash[team][values[k]].to_s
                      end
    end
    returnstring
  end
=======
#Way to calculate basketball teams points and show it

### Format of main received string
#  "Los Angeles Clippers 104 Dallas Mavericks 88,
#  New York Knicks 101 Atlanta Hawks 112,Indiana
#  Pacers 103 Memphis Grizzlies 112, Los Angeles
#  Clippers 100 Boston Celtics 120"

### Return format
#  "Team Name:W=nb of wins;D=nb of draws;
#  L=nb of losses;Scored=nb;Conceded=nb;Points=nb"

#r - main received string
#team - name of team
def nba_cup(r,team)
  #if team == ""
  return "" if team.empty?

  #replacing all commas with a new line
  #than searching games with this team in any game
  tr = r.tr(",", "\n").scan(/^.*#{team}\s.*$/)

  #if there team don`t played
  return "#{team}:This team didn't play!" if tr.empty?

  #if points is in float data type
  return "Error(float number):#{tr.join}" if tr.join.match(/\d+\.\d+/)

#We divide all games with our team into separate results
  tr.map! do |g|
    g.scan(/^.+\s\d+(?=\s)|\w.+\s\d+$/) end

#swap of the teams
#our team is always first
  tr.map! do |a,b|
    a.match(/#{team}/) ? [a,b] : [b,a]
  end

#pointing
  h = {"W"=>0, "D"=>0, "L"=>0, "S"=>0, "C"=>0}
  tr.each do |a,b|
    as = a[/\d+$/].to_i
    bs = b[/\d+$/].to_i
    h["W"] += 1 if as > bs
    h["D"] += 1 if as == bs
    h["L"] += 1 if as < bs
    h["S"] += as
    h["C"] += bs
  end

#return string. Is no ; in the end
  "#{team}:W=#{h["W"]};D=#{h["D"]};L=#{h["L"]};Scored=#{h["S"]};Conceded=#{h["C"]};Points=#{h["W"] * 3 + h["D"]}"
>>>>>>> Stashed changes
end
