class Scorecard
  def get_scorecard(players)
    players.map{
      |batsman|
      puts batsman.get_scorecard
    }
  end
end
