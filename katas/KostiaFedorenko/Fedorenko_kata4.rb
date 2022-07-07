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
end
