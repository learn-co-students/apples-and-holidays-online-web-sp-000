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
  # return the second element in the 4th of July array
  return holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  winter_holidays=holiday_hash[:winter]
   winter_holidays.each do |holiday, array|
   array << supply
 end
 return nil 
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  memorial_day_supply_arr = holiday_hash[:spring][:memorial_day]
  memorial_day_supply_arr.push(supply)
  

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_season=holiday_hash[season]
  holiday_season[holiday_name]=supply_array
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  final= []
  winter_holidays=holiday_hash[:winter]
  winter_holidays.each do |holiday, array|
    array.each do |item|
      final << item 
    end
  end
  return final
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season_name, internal_hash|
    string_season=season_name.to_s 
    string_season_capitalized= string_season.capitalize 
    puts "#{string_season_capitalized}:"
    internal_hash.each do |holiday_name, holiday_arr|
     holiday_STR=holiday_name.to_s
     holiday_STR_arr=holiday_STR.split("_")
     holiday_STR_arr.each do |word|
       word.capitalize!
     end
     holiday_STR_final= holiday_STR_arr.join(" ")
     holiday_supplies_final=holiday_arr.join(", ")
     puts "  #{holiday_STR_final}: #{holiday_supplies_final}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  final = []
  holiday_hash.each do |season_name, internal_hash|
    internal_hash.each do |holiday_name, holiday_arr|
      holiday_arr.each do |element|
        if (element == "BBQ")
          final << holiday_name
          break
        end
      end
    end
  end
  return final
end







