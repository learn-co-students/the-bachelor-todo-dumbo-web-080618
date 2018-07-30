require 'pry'

def get_first_name_of_season_winner(data, season)
  first_name = ""

  data.each do |seasons, details|
    if seasons == season
      details.each do |topic, content|
        if topic['status'] == "Winner"
          first_name = topic['name']
          #binding.pry
        end
      end
    end
  end
  return first_name.split.first
end

#______________________________________

def get_contestant_name(data, occupation)
  data.each do |seasons, details|
    details.each do |topic, content|
      if topic['occupation'] == occupation
        return topic['name']
      end
    end
  end
end

#______________________________________

def count_contestants_by_hometown(data, hometown)
  counter = 0

  data.each do |seasons, details|
    details.each do |topic, content|
      if topic['hometown'] == hometown
        counter += 1
      end
    end
  end
  return counter
end

#______________________________________

def get_occupation(data, hometown)
  data.each do |seasons, details|
    details.find do |topic, content|
      if topic['hometown'] == hometown
        return topic['occupation']
      end
    end
  end
end

#______________________________________

def get_average_age_for_season(data, season)
  ages = 0
  contestants = 0

  data[season].each do |hash|
    ages += (hash["age"]).to_i
    contestants += 1
  end
  (ages / contestants.to_f).round(0)
end
