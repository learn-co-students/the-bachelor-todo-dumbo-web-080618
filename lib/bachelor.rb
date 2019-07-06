require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |season_num, details|
    if season_num == season
      details.each do |info|
        info.each do |key,value|
          if key == "status"
            if value == "Winner"
              return info["name"].split(" ").first
            end 
          end 
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
 data.each do |season_num, details|
      details.each do |info|
        info.each do |key,value|
          if key == "occupation"
            if value == occupation
              return info["name"]
            end
          end
        end
      end
    end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
    data.each do |season_num, details|
      details.each do |info|
        info.each do |key,value|
          if key == "hometown"
            if value == hometown 
              counter += 1 
          end
        end
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
    occupations = []
    data.each do |season_num, details|
      details.each do |info|
        info.each do |key,value|
          if key == "hometown"
            if value == hometown
              occupations.push (info["occupation"])
            end
          end
        end
      end
    end
    occupations.first
  end

def get_average_age_for_season(data, season)
  add = []
   data.each do |season_num, details|
    if season_num == season
      details.each do |info|
        info.each do |key,value|
          if key == "age"
            add << value.to_i
          end
        end
      end
    end
  end
   average = add.inject { |num,el| num + el}.to_f / add.size
   return average.round
end

