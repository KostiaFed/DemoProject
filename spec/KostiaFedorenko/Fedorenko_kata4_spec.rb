data = "Los Angeles Clippers 104 Dallas Mavericks 88,New York Knicks 101 Atlanta Hawks 112,Indiana Pacers 103 Memphis Grizzlies 112,"\
     "Los Angeles Lakers 111 Minnesota Timberwolves 112,Phoenix Suns 95 Dallas Mavericks 111,Portland Trail Blazers 112 New Orleans Pelicans 94,"\
     "Sacramento Kings 104 Los Angeles Clippers 111,Houston Rockets 85 Denver Nuggets 105,Memphis Grizzlies 76 Cleveland Cavaliers 106,"\
     "Milwaukee Bucks 97 New York Knicks 122,Oklahoma City Thunder 112 San Antonio Spurs 106,Boston Celtics 112 Philadelphia 76ers 95,"\
     "Brooklyn Nets 100 Chicago Bulls 115,Detroit Pistons 92 Utah Jazz 87,Miami Heat 104 Charlotte Hornets 94,"\
     "Toronto Raptors 106 Indiana Pacers 99,Orlando Magic 87 Washington Wizards 88,Golden State Warriors 111 New Orleans Pelicans 95,"\
     "Atlanta Hawks 94 Detroit Pistons 106,Chicago Bulls 97 Cleveland Cavaliers 95,"\
     "San Antonio Spurs 111 Houston Rockets 86,Chicago Bulls 103 Dallas Mavericks 102,Minnesota Timberwolves 112 Milwaukee Bucks 108,"\
     "New Orleans Pelicans 93 Miami Heat 90,Boston Celtics 81 Philadelphia 76ers 65,Detroit Pistons 115 Atlanta Hawks 87,"\
     "Toronto Raptors 92 Washington Wizards 82,Orlando Magic 86 Memphis Grizzlies 76,Los Angeles Clippers 115 Portland Trail Blazers 109,"\
     "Los Angeles Lakers 97 Golden State Warriors 136,Utah Jazz 98 Denver Nuggets 78,Boston Celtics 99 New York Knicks 85,"\
     "Indiana Pacers 98 Charlotte Hornets 86,Dallas Mavericks 87 Phoenix Suns 99,Atlanta Hawks 81 Memphis Grizzlies 82,"\
     "Miami Heat 110 Washington Wizards 105,Detroit Pistons 94 Charlotte Hornets 99,Orlando Magic 110 New Orleans Pelicans 107,"\
     "Los Angeles Clippers 130 Golden State Warriors 95,Utah Jazz 102 Oklahoma City Thunder 113,San Antonio Spurs 84 Phoenix Suns 104,"\
     "Chicago Bulls 103 Indiana Pacers 94,Milwaukee Bucks 106 Minnesota Timberwolves 88,Los Angeles Lakers 104 Portland Trail Blazers 102,"\
     "Houston Rockets 120 New Orleans Pelicans 100,Boston Celtics 111 Brooklyn Nets 105,Charlotte Hornets 94 Chicago Bulls 86,"\
     "Cleveland Cavaliers 103 Dallas Mavericks 97"


require './katas/KostiaFedorenko/Fedorenko_kata4'

Test = Struct.new(:input, :output)

describe '#nba_cup' do

  context 'Correct input' do
    it 'Exist' do
      tests = [
        Test.new([data, "Boston Celtics"], "Boston Celtics:W=4;D=0;L=0;Scored=403;Conceded=350;Points=12"),
        Test.new([data, "Boston Celt"], "Boston Celt:This team didn't play!"),
        Test.new([data, "Charlotte Hornets"], "Charlotte Hornets:W=2;D=0;L=2;Scored=373;Conceded=382;Points=6"),
        Test.new([data, "Dallas Mavericks"], "Dallas Mavericks:W=1;D=0;L=4;Scored=485;Conceded=504;Points=3")
      ]

      for test in tests
        expect(nba_cup(*test.input)).to eq(test.output)
      end
    end

    it 'Not exist' do
      tests = [
        Test.new([data, "Boston Celt"], "Boston Celt:This team didn't play!"),
        Test.new([data, "Charlotte Hornetss"], "Charlotte Hornetss:This team didn't play!"),
        Test.new([data, "New York"], "New York:This team didn't play!")
      ]

      for test in tests
        expect(nba_cup(*test.input)).to eq(test.output)
      end
    end
  end

  context 'Incorrect input' do
    it 'Empty' do
      expect { nba_cup() }.to raise_error(ArgumentError)
    end

    it 'String' do
      tests = [
        Test.new(["", "Boston Celtics"], "Boston Celtics:This team didn't play!"),
        Test.new(["", "Boston Celt"], "Boston Celt:This team didn't play!"),
        Test.new(["", "Charlotte Hornets"], "Charlotte Hornets:This team didn't play!"),
        Test.new(["", "Dallas Mavericks"], "Dallas Mavericks:This team didn't play!")
      ]

      for test in tests
        expect(nba_cup(*test.input)).to eq(test.output)
      end
    end

    it 'Array' do
      tests = [
        Test.new([[], "Boston Celtics"], "Boston Celtics:This team didn't play!"),
        Test.new([[], "Boston Celt"], "Boston Celt:This team didn't play!"),
        Test.new([[], "Charlotte Hornets"], "Charlotte Hornets:This team didn't play!"),
        Test.new([[], "Dallas Mavericks"], "Dallas Mavericks:This team didn't play!")
      ]

      for test in tests
        expect(nba_cup(*test.input)).to eq(test.output)
      end
    end

    it 'Array with string' do
      tests = [
        Test.new([["", "Boston Celtics"], "Boston Celtics:This team didn't play!"], "Boston Celtics:This team didn't play!"),
        Test.new([["", "Boston Celt"], "Boston Celt:This team didn't play!"], "Boston Celt:This team didn't play!"),
        Test.new([["", "Charlotte Hornets"], "Charlotte Hornets:This team didn't play!"], "Charlotte Hornets:This team didn't play!"),
        Test.new([["", "Dallas Mavericks"], "Dallas Mavericks:This team didn't play!"], "Dallas Mavericks:This team didn't play!")
      ]

      for test in tests
        expect(nba_cup(*test.input)).to eq(test.output)
      end
    end
  end
end 