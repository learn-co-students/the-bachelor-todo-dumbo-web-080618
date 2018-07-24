require 'pry'
def get_first_name_of_season_winner(data, season)
    data[season].each do |people|

     people.each do |k,v|
      if v == "Winner"
          name = people["name"]
          return name.split(" ").first
   end 
  end
 end
end

def get_contestant_name(data, occupation)
 data.each do |season, x|
    x.each do |people|
      people.each do |k,v|
        if v == occupation
          return people["name"]
   end
  end
 end
end

end

def count_contestants_by_hometown(data, hometown)
  count = 0 
    data.each do |season, x|
      x.each do |people|
        people.each do |k, v|
          if v == hometown
            count += 1 
   end
  end
end
end
count
end

def get_occupation(data, hometown)
data.each do |season, x|
      x.each do |people|
        people.each do |k, v|
          if v == hometown
           return people["occupation"]
   end
  end
end
end
end

def average(array)
  age_sum = array.reduce(:+)
  total = array.length 
  
  ans = (age_sum/total)
  ans.round
end

def get_average_age_for_season(data, season)
  ages = []
    data.each do |season_t, array|
      if season_t == season 
        array.each do |people|
          people.each do |k, v|
            ages << people["age"].to_f
        end
      end
    end
    
  end
average(ages)
end




