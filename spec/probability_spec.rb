require_relative '../probability.rb'

RSpec.describe Probability, '#get_probability' do
  context 'Given the initial values' do
    it 'should be able to return the probability hash' do
      probability = Probability.new(0, 1, 2, 3, 4, 5, 6, 7)
      result = probability.get_probability()
      expect(result).to eq ({
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

RSpec.describe Probability, '#get_probability' do
  context 'given lesser number of args' do
    it 'will throw no error' do
        probability = Probability.new(0, 1, 2, 3, 4, 5, 6)
        expect(probability).to be_a Probability
    end
  end
end

RSpec.describe Probability, '#get_probability' do
  context 'given more number of args' do
    it 'will throw no error' do
        probability = Probability.new(0, 1, 2, 3, 4, 5, 6, 7, 8)
        expect(probability).to be_a Probability
    end
  end
end
