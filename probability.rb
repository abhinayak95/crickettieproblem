class Probability
  attr_accessor :zeros, :ones, :twos, :threes, :fours, :fives, :sixes, :out
  def initialize(*prob_arr)
    @zeros = prob_arr[0]
    @ones = prob_arr[1]
    @twos = prob_arr[2]
    @threes = prob_arr[3]
    @fours = prob_arr[4]
    @fives = prob_arr[5]
    @sixes = prob_arr[6]
    @out = prob_arr[7]
  end
  def get_probability
    return { 0 => @zeros, 1 => @ones, 2 => @twos, 3 => @threes, 4 => @fours, 5 => @fives, 6 => @sixes, 'out' => @out }
  end
end
