require_relative '../batsman.rb'
require_relative '../probability.rb'

RSpec.describe Batsman, '#' do
  context 'Given a player name and his probability' do
    it 'be able to create a new batsman' do
      probability = Probability.new(0, 1, 2, 3, 4, 5, 6, 7)
      batsman = Batsman.new('Test1', probability)
      expect(batsman).to be_a Batsman
    end
  end
end

RSpec.describe Batsman, '#get_probability' do
  context 'using get_probability' do
    it 'be able to get the batsmans probability' do
      probability = Probability.new(0, 1, 2, 3, 4, 5, 6, 7)
      batsman = Batsman.new('Test1', probability)
      expect(batsman.get_probability).to eq ({
        0 => 0,
        1 => 1,
        2 => 2,
        3 => 3,
        4 => 4,
        5 => 5,
        6 => 6,
        'out' => 7,
        })
    end
  end
end

RSpec.describe Batsman, '#add_runs' do
  context 'using add_runs method' do
    it 'be able to add runs to his scorecard' do
      probability = Probability.new(0, 1, 2, 3, 4, 5, 6, 7)
      batsman = Batsman.new('Test1', probability)
      batsman.add_runs(6)
      expect(batsman.runs).to eq 6
    end
  end
end
