def get_first_name_of_season_winner(data, season)
  # code here
  data[season].each { |array|
      if array["status"] == "Winner"
        return array["name"].split(" ").first
      end
  }
end

def get_contestant_name(data, occupation)
  # code here
  data.each { |season, array|
    array.each { |describe|
      describe.each { |key, value|
        if value == occupation
          return describe["name"]
        end
      }
    }
  }
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each { |season, array|
    array.each { |describe|
      if describe["hometown"] == hometown
        count += 1
      end
    }
  }
  count
end

def get_occupation(data, hometown)
  # code here
  data.each { |season, array|
    array.each { |describe|
      if describe["hometown"] == hometown
        return describe["occupation"]
      end
    }
  }
end

def get_average_age_for_season(data, season)
  # code here
  age = 0
  count= 0
  data[season].each { |array|
      array.each { |key, value|
        count += 1
        age += array["age"].to_f
      }
  }
  (age/count).round
end
