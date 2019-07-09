def get_first_name_of_season_winner(data, season)
  # code here
  winner = nil
  data.fetch(season).each do |element|
    if (element["status"] == "Winner")
      winner = element["name"].split(' ')[0]
    end
  end
  winner
end

def get_contestant_name(data, occupation)
  name = nil
  data.values.flatten.each do |contestant|
    if(contestant["occupation"] == occupation)
      name = contestant["name"]
    end
  end
  name
end

def count_contestants_by_hometown(data, hometown)
  # code here
  data.values.flatten.select do |contestant|
    contestant["hometown"] == hometown
  end.size
end

def get_occupation(data, hometown)
  # code here
  data.values.flatten.find do |contestant|
    contestant["hometown"] == hometown
  end["occupation"]
end

def get_average_age_for_season(data, season)
  total = 0
  contestants = 0
  data[season].each do |contestant|
    total += (contestant["age"]).to_i
    contestants += 1
  end
  (total/contestants.to_f).round(0)
end

# def get_average_age_for_season(data, season)
#   age_total = 0
#   num_of_contestants = 0
#   data[season].each do |contestant_hash|
#     age_total += (contestant_hash["age"]).to_i
#     num_of_contestants += 1
#   end
#   (age_total / num_of_contestants.to_f).round(0)
# end
