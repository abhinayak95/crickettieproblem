require_relative 'probability.rb'
require_relative 'player.rb'
require_relative 'team.rb'
require_relative 'match.rb'
require_relative 'batsman.rb'
require_relative 'scorecard.rb'
require_relative 'umpire.rb'
require_relative 'weighted_random_generator.rb'

random_generator = RandomGenerator.new

scorecard = Scorecard.new

umpire = Umpire.new

batsman1 = Batsman.new('Kirat Boli', Probability.new(5, 10, 25, 10, 25, 1, 14, 10))
batsman2 = Batsman.new('NS Nodhi', Probability.new(5, 15, 15, 10, 20, 1, 19, 15))
team1 = Team.new('Team 1', batsman1, batsman2, 6)

batsman3 = Batsman.new('DB Vellyers', Probability.new(5, 10, 25, 10, 25, 1, 14, 10))
batsman4 = Batsman.new('H Mamla', Probability.new(10, 15, 15, 10, 20, 1, 19, 15))
team2 = Team.new('Team 2', batsman3, batsman4, 6)
team2.chasing? true

match = Match.new(team1, team2, umpire, scorecard, 6)

match.get_batting_team_order.each do |team|
  team.get_remaining_balls.times do |ball|
    result = random_generator.random_weighted(team.get_batsman_on_strike.get_probability)
    if(result == 'out')
      team.get_batsman_on_strike.out? true;
      team.get_batsman_on_strike.add_runs(0)
      team.next_batsman
      break if team.get_remaining_wickets == 0
    else
      team.get_batsman_on_strike.add_runs(result)
      team.increase_score(result)
      break if team.chasing && team.get_runs_scored >= match.get_target_score
      team.change_strike() if result == 1 || result == 3 || result == 5
    end
  end
  match.set_target_score(team.get_runs_scored + 1) unless team.chasing
end

match.get_batting_team_order.each do |team|
  scorecard.get_scorecard(team.get_all_players)
end

if team2.get_runs_scored - match.get_target_score >= 0
  puts "#{team2.get_name} won with #{team2.get_remaining_balls()} balls remaining"
else
  puts "#{team1.get_name} won by #{match.get_target_score - team2.get_runs_scored - 1}"
end
