require_relative '../match.rb'
require_relative '../scorecard.rb'
require_relative '../probability.rb'
require_relative '../player.rb'
require_relative '../batsman.rb'
require_relative '../team.rb'
require_relative '../umpire.rb'

RSpec.describe Match, '#' do
  context 'Given the teams, scorecard and an umpire, balls_remaining' do
    it 'should simulate the match' do
      scorecard = Scorecard.new

      umpire = Umpire.new

      batsman1 = Batsman.new('Kirat Boli', Probability.new(5, 10, 25, 10, 25, 1, 14, 10))
      batsman2 = Batsman.new('NS Nodhi', Probability.new(5, 15, 15, 10, 20, 1, 19, 15))
      batsman3 = Batsman.new('DB Vellyers', Probability.new(5, 10, 25, 10, 25, 1, 14, 10))
      batsman4 = Batsman.new('H Mamla', Probability.new(10, 15, 15, 10, 20, 1, 19, 15))
      team1 = Team.new('Team 1', batsman1, batsman3, 6)
      team2 = Team.new('Team 2', batsman2, batsman4, 6)
      team2.chasing? true
      match = Match.new(team1, team2, umpire, scorecard)
      expect(match).to be_a Match
    end
  end
end
