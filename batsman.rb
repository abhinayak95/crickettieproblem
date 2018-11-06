require_relative 'player.rb'
require_relative 'probability.rb'

class Batsman < Player
  attr_accessor :runs, :balls_faced, :is_out, :probability
  def initialize(name, probability)
    @name = name
    @probability = probability
    @runs = 0
    @balls_faced = 0
    @is_out = false
  end
  def add_runs(runs)
    @runs += runs.to_i
    @balls_faced += 1
  end

  def get_probability
    return @probability.get_probability
  end

  def get_scorecard
    if @is_out || @balls_faced == 0
      return "#{name} #{runs} (#{balls_faced} balls)"
    else
      return "#{name} #{runs}* (#{balls_faced} balls)"
    end
  end

  def out?(is_out)
    @is_out = is_out
  end
end
