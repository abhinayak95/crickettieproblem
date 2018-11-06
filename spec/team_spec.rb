require_relative '../team.rb'
require_relative '../player.rb'
require_relative '../probability.rb'

RSpec.describe Team, '#' do
  context 'Given team members' do
    it 'be able to create a new team' do
      probability = Probability.new(0, 1, 2, 3, 4, 5, 6, 7)
      player1 = Player.new('Test1', probability)
      player2 = Player.new('Test2', probability)
      player3 = Player.new('Test3', probability)
      team = Team.new(player1, player2, player3)
      expect(team).to be_a Team
    end
  end
end
