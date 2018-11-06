require_relative '../player.rb'
require_relative '../probability.rb'

RSpec.describe Player, '#' do
  context 'Just a Player class' do
    it 'be able to create a new batsman' do
      player = Player.new
      expect(player).to be_a Player
    end
  end
end
