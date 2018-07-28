

def get_first_name_of_season_winner(data, season)
  # Return the first name of that season's winner
  result = ""
  data[season].each do |s| 
  # s is the array of hashes containing the info
  # for each contestant in that particular season
    if s["status"] == "Winner"
      result = s["name"]
    end
  end
  result.split(' ').first
end

def get_contestant_name(data, occupation)
  # Takes in the data hash and occupation string and
  # returns the name of the women who has that occupation
  data.each do |season, arr|
    arr.each do |contestants|
      if contestants["occupation"] == occupation
        return contestants["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # Two arguments: data hash, and string of hometown
  # Should return a counter of the number of contestants who are from that hometown
  count = 0
  data.each do |season, arr|
    arr.each do |contestants|
      if contestants["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # Two arguments: data hash and a string of a hometown
  # Shold return the occupation of the first contestant who
  # is from that hometown
  data.each do |season, arr|
    arr.each do |contestants|
      if contestants["hometown"] == hometown
        return contestants["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  result = []
  data[season].each do |contestant|
    result << contestant["age"].to_i
  end
  num = 0.0
  result.each do |x|
    num += x
  end
  num /= result.length
  num.round
end



































