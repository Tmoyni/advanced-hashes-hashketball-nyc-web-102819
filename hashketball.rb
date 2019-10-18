require 'pry'
def game_hash
  hash = {
  :home => {
    :team_name => "Brooklyn Nets",
    :colors => ["Black", "White"],
    :players => [
      {:player_name => "Alan Anderson",
      :number => 0,
      :shoe => 16,
      :points => 22,
      :rebounds => 12,
      :assists => 12,
      :steals => 3,
      :blocks => 1,
      :slam_dunks => 1
      },
      {:player_name => "Reggie Evans",
      :number => 30,
      :shoe => 14,
      :points => 12,
      :rebounds => 12,
      :assists => 12,
      :steals => 12,
      :blocks => 12,
      :slam_dunks => 7
      },
      {:player_name => "Brook Lopez",
      :number => 11,
      :shoe => 17,
      :points => 17,
      :rebounds => 19,
      :assists => 10,
      :steals => 3,
      :blocks => 1,
      :slam_dunks => 15
      },
      {:player_name => "Mason Plumlee",
      :number => 1,
      :shoe => 19,
      :points => 26,
      :rebounds => 11,
      :assists => 6,
      :steals => 3,
      :blocks => 8,
      :slam_dunks => 5
      },
      {:player_name => "Jason Terry",
      :number => 31,
      :shoe => 15,
      :points => 19,
      :rebounds => 2,
      :assists => 2,
      :steals => 4,
      :blocks => 11,
      :slam_dunks => 1
      },
    ]
  },
  :away => {
    :team_name => "Charlotte Hornets",
    :colors => ["Turquoise", "Purple"],
    :players => [
      {:player_name => "Jeff Adrien",
      :number => 4,
      :shoe => 18,
      :points => 10,
      :rebounds => 1,
      :assists => 1,
      :steals => 2,
      :blocks => 7,
      :slam_dunks => 2
      },
      {:player_name => "Bismack Biyombo",
      :number => 0,
      :shoe => 16,
      :points => 12,
      :rebounds => 4,
      :assists => 7,
      :steals => 22,
      :blocks => 15,
      :slam_dunks => 10
      },
      {:player_name => "DeSagna Diop",
      :number => 2,
      :shoe => 14,
      :points => 24,
      :rebounds => 12,
      :assists => 12,
      :steals => 4,
      :blocks => 5,
      :slam_dunks => 5
      },
      {:player_name => "Ben Gordon",
      :number => 8,
      :shoe => 15,
      :points => 33,
      :rebounds => 3,
      :assists => 2,
      :steals => 1,
      :blocks => 1,
      :slam_dunks => 0
      },
      {:player_name => "Kemba Walker",
      :number => 33,
      :shoe => 15,
      :points => 6,
      :rebounds => 12,
      :assists => 12,
      :steals => 7,
      :blocks => 5,
      :slam_dunks => 12
      },
    ]
  }
  }
end

def num_points_scored(player_name)
  players = game_hash.map do |team, team_stats|
    team_stats[:players]
  end.flatten
  
  player = players.find do |player|
    player[:player_name] == player_name
  end 
  player[:points]
end


def shoe_size(player_name)
  players = game_hash.map do |team, team_stats|
    team_stats[:players]
  end.flatten
  
  player = players.find do |player|
    player[:player_name] == player_name
  end 
  player[:shoe]
end 


def team_colors(team_name)
  game_hash.each do |place, team|
   if team[:team_name] == team_name
      return team[:colors]
    end 
  end 
end

def team_names
  game_hash.map do |place, team|
    team[:team_name]
  end
end

def player_numbers(team_name)
  numbers = []
  game_hash.each do |place, team|
    if team[:team_name] == team_name
      team.each do |attributes, data|
        if attributes == :players
          data.each do |player|
            numbers << player[:number]
          end 
        end 
      end
    end 
  end
  numbers
end 

def player_stats(player_name)
  new_hash = {}
  game_hash.each do |place, team|
    team.each do |attributes, data|
      if attributes == :players
        data.each do |player|
          if player[:player_name] == player_name
            new_hash = player.delete_if do |k, v|
              k == :player_name
            end 
          end 
        end
      end 
    end 
  end
  new_hash
end  


def big_shoe_rebounds
  shoe size = 0
  players = game_hash.map do |team, team_stats|
    team_stats[:players]
  end.flatten
  binding.pry
  
  shoe_sizes = players.find do |shoes|
    if shoes[:shoe] > 0
    
  end 
  player[:shoe]
end 

=begin 
get single list of all the shoe sizes
compare shoe sizes with < starting at 0
find the longest shoe size
return the number of rebounds of the largest 
def big_shoe_rebounds
  shoe_size = 0
  game_hash.each do |place, team|
    team.each do |attributes, data|
      data.each do |shoe_size|
      end
    end
  end    
end 


player = players.find do |player|
    player[:player_name] == player_name
  end 
  player[:points]
  
=end
  





