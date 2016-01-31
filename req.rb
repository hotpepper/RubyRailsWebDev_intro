

require_relative 'player' # like import
require_relative 'team'

player1 = Player.new("Bob", 13, 5); player2 =Player.new("jim", 15, 4.5)
player3 = Player.new("mike", 21, 5); player4 = Player.new("Joe",14,5)
player5 = Player.new("Scott", 16, 3)

red_team = Team.new("red")
red_team.add_players(player1, player2, player3, player4, player5) # splat
# can use select / reject because tram includes Enumerable
elig_plaers = red_team.select {|player| (14..20) === player.age }.reject{|player| player.skill_level < 4.5}

puts elig_plaers
