def get_first_name_of_season_winner(data, season)
  hash = data.dig(season)
  hash.each do |contestant|
    if contestant["status"] == "Winner"
      return contestant["name"].split.first
    end
  end
end

def get_contestant_name(data, occupation)
  data.values.each do |contestant|
    contestant.each do |person|
      if person["occupation"] == occupation
        return person["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  array = data.values.flatten
  count = 0

  array.each do |hash|
    if hash["hometown"] == hometown
      count += 1
    end
  end

  count
end

def get_occupation(data, hometown)
  array = data.values.flatten
  array.each do |hash|
    if hash["hometown"] == hometown
      return hash["occupation"]
    end
  end
end

def get_average_age_for_season(data, season)
  contestants = data.dig(season)
  sum = 0
  contestants.each { |contestant| sum += contestant["age"].to_f }
  (sum / contestants.size).round
end
