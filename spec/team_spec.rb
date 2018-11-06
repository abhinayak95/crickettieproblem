require_relative '../team.rb'
require_relative '../batsman.rb'
require_relative '../probability.rb'

RSpec.describe Team, '#' do
  context 'Given team members' do
    it 'be able to create a new team' do
      probability = Probability.new(0, 1, 2, 3, 4, 5, 6, 7)
      batsman1 = Batsman.new('Test1', probability)
      batsman2 = Batsman.new('Test2', probability)
      batsman3 = Batsman.new('Test3', probability)
      team = Team.new('Team1', batsman1, batsman2, batsman3, 6)
      expect(team).to be_a Team
    end
  end
end
