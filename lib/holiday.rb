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
return holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
holiday_hash[:winter].each do |holiday, supplies|
  supplies << supply
end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash

  holiday_hash[season.to_sym].merge!(holiday_name.to_sym => supply_array.to_a)
return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
supplies = []
holiday_hash[:winter].each do |holiday, supply_array|
  supplies.concat(supply_array)
end
  supplies.flatten!
  return supplies
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  new_hash = holiday_hash
new_hash.each do |season_hash, data_hsh|
   seasons = season_hash.to_s.split
   seasons.map do |item|
       item.capitalize!
     end
     seasons = seasons.join
    puts "#{seasons}:"
  data_hsh.each do |holiday_name_hash, supplies_hsh|
    holiday = holiday_name_hash.to_s.split("_")
    holiday.map do |item|
        item.capitalize!
      end
      holiday = holiday.join(" ")
    supplies = supplies_hsh.join(", ")
    puts "  #{holiday}: #{supplies}"
  end
end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holidays = []
holiday_hash.each do |season_hash, data_hsh|
 data_hsh.each do |holiday_hash, supplies_hsh|
if supplies_hsh.include?("BBQ")
  holidays << holiday_hash
end
end
end
return holidays
end
