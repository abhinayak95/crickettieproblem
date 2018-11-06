require_relative '../player.rb'
require_relative '../probability.rb'

RSpec.describe Player, '#' do
  context 'Given a player name and his probability' do
    it 'be able to create a new player' do
      probability = Probability.new(0, 1, 2, 3, 4, 5, 6, 7)
      player = Player.new('Test1', probability)
      expect(player).to be_a Player
    end
  end
end
