require_relative '../match.rb'
require_relative '../scorecard.rb'
require_relative '../probability.rb'
require_relative '../player.rb'
require_relative '../batsman.rb'
require_relative '../team.rb'

RSpec.describe Match, '#' do
  context 'Given the teams, scorecard' do
    it 'should simulate the match' do
      scorecard = Scorecard.new


      batsman1 = Batsman.new('Kirat Boli', Probability.new(5, 10, 25, 10, 25, 1, 14, 10))
      batsman2 = Batsman.new('NS Nodhi', Probability.new(5, 15, 15, 10, 20, 1, 19, 15))
      batsman3 = Batsman.new('DB Vellyers', Probability.new(5, 10, 25, 10, 25, 1, 14, 10))
      batsman4 = Batsman.new('H Mamla', Probability.new(10, 15, 15, 10, 20, 1, 19, 15))
      team1 = Team.new('Team 1', batsman1, batsman3, 6)
      team2 = Team.new('Team 2', batsman2, batsman4, 6)
      team2.chasing? true
      match = Match.new(team1, team2, scorecard)
      expect(match).to be_a Match
    end
  end
end

RSpec.describe Match, '#get_batting_team_order' do
  context 'using the get_batting_team_order' do
    it 'be able to get who is going to bat first' do
      scorecard = Scorecard.new
      batsman1 = Batsman.new('Kirat Boli', Probability.new(5, 10, 25, 10, 25, 1, 14, 10))
      batsman2 = Batsman.new('NS Nodhi', Probability.new(5, 15, 15, 10, 20, 1, 19, 15))
      batsman3 = Batsman.new('DB Vellyers', Probability.new(5, 10, 25, 10, 25, 1, 14, 10))
      batsman4 = Batsman.new('H Mamla', Probability.new(10, 15, 15, 10, 20, 1, 19, 15))
      team1 = Team.new('Team 1', batsman1, batsman3, 6)
      team2 = Team.new('Team 2', batsman2, batsman4, 6)
      team2.chasing? true
      match = Match.new(team2, team1, scorecard)
      expect(match.get_batting_team_order[0].get_name).to eq 'Team 2'
    end
  end
end

def set_target_score(score)
  @target_score = score
end

def get_target_score
  @target_score
end
