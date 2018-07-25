
[1mFrom:[0m /home/mcelis13/the-bachelor-todo-dumbo-web-080618/lib/bachelor.rb @ line 99 Object#get_average_age_for_season:

     [1;34m79[0m: [32mdef[0m [1;34mget_average_age_for_season[0m(data, season)
     [1;34m80[0m:   ages = []
     [1;34m81[0m:   sum_of_ages = [1;34m0[0m
     [1;34m82[0m: 
     [1;34m83[0m:   data.each [32mdo[0m |seasonName, seasonData|
     [1;34m84[0m:     [32mif[0m seasonName == season
     [1;34m85[0m:         seasonData.each [32mdo[0m |arrayOfHashes|
     [1;34m86[0m:            keys = arrayOfHashes.keys
     [1;34m87[0m:            keys.each [32mdo[0m |key|
     [1;34m88[0m:              [32mif[0m key == [31m[1;31m'[0m[31mage[1;31m'[0m[31m[0m
     [1;34m89[0m:                  ages << arrayOfHashes[key]
     [1;34m90[0m:              [32mend[0m
     [1;34m91[0m:            [32mend[0m
     [1;34m92[0m:         [32mend[0m [1;34m# end of seasonData loop[0m
     [1;34m93[0m:     [32mend[0m [1;34m# end of if loop checking for season name[0m
     [1;34m94[0m:   [32mend[0m [1;34m# end of data loop[0m
     [1;34m95[0m: 
     [1;34m96[0m:   [1;34m#summing ages using a for loop could also you .each[0m
     [1;34m97[0m:   [32mfor[0m index [32min[0m ages [32mdo[0m
     [1;34m98[0m:     sum_of_ages += index.to_i
 =>  [1;34m99[0m:     binding.pry
    [1;34m100[0m:   [32mend[0m
    [1;34m101[0m: 
    [1;34m102[0m:   sum_of_ages / ages.size
    [1;34m103[0m: [32mend[0m

