require_relative '../scorecard'

RSpec.describe Scorecard, '#get_scorecard' do
  context 'by calling get_scorecard' do
    it 'be able to get the scorecard of passed batsman' do
      scorecard = Scorecard.new
      probability = Probability.new(0, 1, 2, 3, 4, 5, 6, 7)
      batsman1 = Batsman.new('Test1', probability)
      batsman2 = Batsman.new('Test1', probability)
      scores = scorecard.get_scorecard([batsman1, batsman2])
      expect(scores).to eq [nil, nil]
    end
  end
end
