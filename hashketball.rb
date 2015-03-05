require_relative './game_hash.rb'

# This method returns the team's status
def home_or_away(team_name)
  game_hash[team_name][:status]
end

# Write a new method that returns a team's colors. If you're not sure where to start, take a look at the method above and follow the pattern.

