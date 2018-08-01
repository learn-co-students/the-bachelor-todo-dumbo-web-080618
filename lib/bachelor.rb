require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |seasons, arrays|
    if seasons == season
      arrays.each do |hash|
        if hash["status"] == "Winner"
          hash.each do |key, value|
            if key == "name"
              return value.split.first
            end
          end
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, arrays|
    arrays.each do |hash|
      if hash["occupation"] == occupation
        hash.each do |key, value|
          if key == "name"
            return value
          end
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
count = 0
  data.each do |season, arrays|
    arrays.each do |hash|
      if hash["hometown"] == hometown
        count += 1
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  data.each do |season, arrays|
    arrays.each do |hash|
      if hash["hometown"] == hometown
        hash.each do |key, value|
          if key == "occupation"
            return value
          end
        end
      end
    end
  end
end

def average
  inject(&:+) / size 
end

def get_average_age_for_season(data, season)
  array = []
  data.each do |seasons, arrays|
    if seasons == season
      arrays.each do |hash|
        hash.each do |key, value|
          if key == "age"
            array << value.to_i
            array.inject{ |sum, el| sum + el }.to_f / array.size
          end
        end
      end
    end
  end
  return (array.inject{ |sum, el| sum + el }.to_f / array.size).round
end
