require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
    holiday_hash[:summer][:fourth_of_july][1]
  # return the second element in the 4th of July array
end


def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas] << "Balloons"
  holiday_hash[:winter][:new_years] << "Balloons"
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply  
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
#   # code here
#   # remember to return the updated hash
#   #add columbus day into the fall hash and assign the key /value pair using => 
#when creating a new key value pair, within season, create a new key and set it = to value 
    holiday_hash[season][holiday_name] = supply_array
#   #"Flags", "Parade Floats", "Italian Food"]
end 


def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  #same as lab before where you are returning all of the VALUES only - not the keys
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  holiday_hash.each do |season,holiday|
    puts season.to_s.capitalize + ":"
  holiday.each do |holiday, value|
    #splitting words (New_years) at underscore
    holiday_arr = holiday.to_s.split("_")
    #iterating over all the words and capitalizing each one
    cap_arr = holiday_arr.collect do |word|
      word.capitalize
    end  
	  puts "  " + cap_arr.join(" ") + ": " + value.join(", ")
   # puts #{holiday}: #{value}
  end
end
end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  #begin with an empty array 
    array = []
                  #iterate over each season and holiday 
     holiday_hash.each do |season, holidays|
                          #iterate at the next level for holiday name and supply  holiday.each do |holiday_name, supply| 
                          #if the supply includes BBQ using .include? , add it to the empty array 
        holidays.each do |holiday_name, supply|
            if supply.include?("BBQ")
                array << holiday_name
            end 
        end
    end
    return array 
end 







