class Team
  attr_accessor :name, :players, :batsmen_batting_order, :balls_remaining, :on_strike, :runs_scored, :wickets_remaining, :playing_batsmen, :chasing

  def initialize(name, *players, balls_remaining)
    @name = name
    @players = players
    @balls_remaining = balls_remaining
    @wickets_remaining = players.size
    @on_strike = 0
    @runs_scored = 0
    @chasing = false
    self.batsmen_batting_order(players)
  end

  def batsmen_batting_order(batsmen_batting_order)
    @batsmen_batting_order = batsmen_batting_order.each()
    @batsmen_scorecard = batsmen_batting_order.each()
    @playing_batsmen = [@batsmen_batting_order.next, @batsmen_batting_order.next]
  end

  def next_batsman
    @wickets_remaining -= 1
    self.get_batsman_on_strike.out? true
    self.get_batsman_on_strike.add_runs(0)
    @playing_batsmen.delete_at(@on_strike)
    @balls_remaining -= 1
    begin
      @playing_batsmen.insert(@on_strike, @batsmen_batting_order.next)
    rescue StopIteration
    end
  end

  def get_batsman_on_strike
    @playing_batsmen[@on_strike]
  end
  def get_all_players
    return @players
  end

  def get_remaining_balls
    @balls_remaining
  end

  def get_remaining_wickets
    @wickets_remaining
  end

  def get_runs_scored
    @runs_scored
  end

  def increase_score (runs)
    @runs_scored += runs
    @balls_remaining -= 1
  end

  def chasing?(chasing)
    @chasing = chasing
  end

  def change_strike
    @on_strike = (@on_strike.to_i + 1) % 2
  end

  def get_name
    @name
  end
end
