require 'pry'

def get_first_name_of_season_winner(data, season)
  arr = []
  
  data[season].each do |hash|
    hash.each do |info, specifics|
    if hash["status"] == "Winner"
      arr << specifics if info == "name" 
      end
    end
  end
  return arr.join.split(" ").first
end

def get_contestant_name(data, occupation)
  data.each do |season, hash_arr|
    hash_arr.each do |hash|
      hash.each do |info, specifics|
        if hash["occupation"] == occupation 
          return specifics if info == "name"
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  hometown_count = 0
  data.each do |season, hash_arr|
    hash_arr.each do |hash|
      hash.each do |info, specifics|
        if specifics == hometown
          hometown_count += 1 
        end
      end
    end
  end
  hometown_count
end

def get_occupation(data, hometown)
   data.each do |season, hash_arr|
    hash_arr.each do |hash|
        if hash["hometown"] == hometown
          return hash["occupation"]
        end
    end
  end
end

def get_average_age_for_season(data, season)
  arr = []
  sum = 0 
  data[season].each do |hash|
      hash.each do |info, specifics|
        arr << specifics if info == "age"
      end
  end
  arr.each {|num| sum += num.to_i}
  final  = sum.to_f / arr.length 
  final.round
end
