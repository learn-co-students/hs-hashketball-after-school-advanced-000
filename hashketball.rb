require_relative './game_hash.rb'

# This method returns the team's status
def home_or_away(team_name)
  game_hash[team_name][:status]
end

# Write a new method that returns a team's colors. If you're not sure where to start, take a look at the method above and follow the pattern.
def team_colors(team_name)
  game_hash[team_name][:team_colors]
end

def return_players(team_name)
  game_hash[team_name][:players]
end

def print_player_points(team_name)
  game_hash[team_name][:players].each do |player|
    puts "#{player[:name]}: #{player[:points]} points"
  end
end

def player_stats(team, name)
  game_hash[team][:players].each do |player|
    if player[:name]==name
      return player
    end
  end
end

def shoe_size(team, player_name)
  game_hash[team][:players].each do |player|
    if player[:name]==player_name
      return player[:shoe]
    end
  end
end

def slam_dunks(team, player_name)
  game_hash[team][:players].each do |player|
    if player[:name]==player_name
      return player[:slam_dunks]
    end
  end
end

def big_shoe_slam_dunks(team)
  game_hash[team][:players].max_by do |player|
    player[:shoe]
  end[:slam_dunks]
end