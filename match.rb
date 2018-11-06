class Match
  attr_accessor :team1, :team2, :umpire, :scorecard, :batting_team_order, :target_score
  def initialize(team1, team2, umpire, scorecard)
    @team1 = team1
    @team2 = team2
    @umpire = umpire
    @scorecard = scorecard
    @batting_team_order = [@team1, @team2]
  end

  def get_batting_team_order
    @batting_team_order
  end

  def set_target_score(score)
    @target_score = score
  end

  def get_target_score
    @target_score
  end

end
