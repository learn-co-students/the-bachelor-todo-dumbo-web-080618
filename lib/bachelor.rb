def get_first_name_of_season_winner(data, season)
  winner = ""
  data.each do |season_num, season_data|
    if season_num == season 
      season_data.each do |contestant_info|
        if contestant_info["status"] == "Winner"
          winner = contestant_info["name"].split
        end 
      end 
    end 
  end 
  winner.pop
  winner.join("")
end

def get_contestant_name(data, occupation)
  data.each do |season_num, season_data|
    season_data.each do |contestant_info|
      if contestant_info["occupation"] == occupation
        return contestant_info["name"]
      end 
    end 
  end 
end

def count_contestants_by_hometown(data, hometown)
  count = 0 
  data.each do |season_num, season_data|
    season_data.each do |contestant_info|
      if contestant_info["hometown"] == hometown 
        count += 1 
      end 
    end 
  end 
  count
end

def get_occupation(data, hometown)
  occupation = ""
  data.map do |season_num, season_data|
    season_data.each do |contestant_info|
      if contestant_info["hometown"] == hometown 
        occupation = contestant_info["occupation"]
        return occupation
      end 
    end 
  end 
end

def get_average_age_for_season(data, season)
  season_ages = []
  season_ages_length = 0
  average_age = 0
  data.each do |season_num, season_data|
    if season_num == season 
      season_data.each do |contestant_info|
        season_ages << contestant_info["age"].to_f
      end 
      season_ages_length = season_ages.length
      season_ages.each do |age|
        average_age += age 
      end 
    end 
  end 
  average_age /= season_ages_length
  average_age.round
end
