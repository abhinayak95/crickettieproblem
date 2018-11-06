require_relative '../batsman.rb'
require_relative '../probability.rb'

RSpec.describe Player, '#' do
  context 'Given a player name and his probability' do
    it 'be able to create a new batsman' do
      probability = Probability.new(0, 1, 2, 3, 4, 5, 6, 7)
      batsman = Batsman.new('Test1', probability)
      expect(batsman).to be_a Batsman
    end
  end
end
