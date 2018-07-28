require 'pry'

def get_first_name_of_season_winner(data, season)
  data.each do |season_num, details|
    if season_num.to_s == season
      details.each do |info|
        info.each do |key,value|
          if key == :status
            if value == "Winner"
              return info[:name].split(" ").first
            end
          end 
        end
      end
    end
  end
end
  

#get_contestant_name(data,"Chiropractic Assistant")

def count_contestants_by_hometown(data, hometown)
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end
