def get_first_name_of_season_winner(data, season)
  data.each do |season_number, contestant_arrays|
    if season_number == season
      contestant_arrays.each do |contestant_object|
        contestant_object.each do |attribute, value|
          if attribute == "status" && value == "Winner"
            return contestant_object["name"].split(" ")[0]
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |season_number, contestant_arrays|
    contestant_arrays.each do |contestant_object|
      if contestant_object["occupation"] == occupation
        return contestant_object["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  # code here
  data.each do |season_number, contestant_arrays|
    contestant_arrays.each do |contestant_object|
      if contestant_object["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do |season_number, contestant_arrays|
    contestant_arrays.each do |contestant_object|
      if contestant_object["hometown"] == hometown
        return contestant_object["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  sum_ages = 0
  n = 0

  data.each do |season_number, contestant_arrays|
    if season_number == season
      contestant_arrays.each do |contestant_object|
        sum_ages += contestant_object["age"].to_f
        n += 1
      end
    end
  end
  (sum_ages.to_f/n.to_f).round
end
