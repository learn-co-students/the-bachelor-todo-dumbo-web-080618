require 'pry'

def get_first_name_of_season_winner(data, season)

  data.each do |seasonName, seasonData|
      if seasonName == season
        seasonData.each do |contestantInfoKey|
          contestantInfoKey.each do |key_name, value|
            if key_name = "status"
              if value == 'Winner'
                season
                data[season].each do|obj|
                  obj.each do |key, value|
                    key
                    return value.split(' ').slice(0, 1).join('')
                  end
                end #array of contestant objects
              end
            end # end of stats if loop
          end # end of contestantInfoKey loop
        end # end of seasonData loop
      end # end of if loop
  end # end of data loop
end# end of function


def get_contestant_name(data, occupation)

  data.each do |seasonName, seasonData|
        seasonData.each do |arrayOfHashes|
           keys = arrayOfHashes.keys
           keys.each do |key|
             if key == 'occupation'
               if arrayOfHashes[key] == occupation
                 return arrayOfHashes['name']
               end
             end
           end
        end # end of seasonData loop
  end # end of data loop
end

def count_contestants_by_hometown(data, hometown)
  counter = 0

  data.each do |seasonName, seasonData|
        seasonData.each do |arrayOfHashes|
           keys = arrayOfHashes.keys
           keys.each do |key|
             if key == 'hometown'
               if arrayOfHashes[key] == hometown
                 counter += 1
               end
             end
           end
        end # end of seasonData loop
  end # end of data loop

counter
end

def get_occupation(data, hometown)

  data.each do |seasonName, seasonData|
        seasonData.each do |arrayOfHashes|
           keys = arrayOfHashes.keys
           keys.each do |key|
             if key == 'hometown'
               if arrayOfHashes[key] == hometown
                 return arrayOfHashes['occupation']
               end
             end
           end
        end # end of seasonData loop
  end # end of data loop

end

def get_average_age_for_season(data, season)
  ages = []
  sum_of_ages = 0

  data.each do |seasonName, seasonData|
    if seasonName == season
        seasonData.each do |arrayOfHashes|
           keys = arrayOfHashes.keys
           keys.each do |key|
             if key == 'age'
                 ages << arrayOfHashes[key]
             end
           end
        end # end of seasonData loop
    end # end of if loop checking for season name
  end # end of data loop

  #summing ages using a for loop could also you .each
  for index in ages do
    sum_of_ages += index.to_f
  end

  range = sum_of_ages / ages.size.to_f
  range.round
end
