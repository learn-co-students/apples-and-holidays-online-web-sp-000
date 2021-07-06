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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
holiday_hash[:winter][:christmas] << supply
holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
holiday_hash[season][holiday_name] = supply_array 
holiday_hash 
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten

end

require "pry"
def all_supplies_in_holidays(holiday_hash)

string_season = ""
  string_holiday = ""

holiday_hash.each do |season, holiday|
  string_season = "#{season.to_s.capitalize!}:"
  puts string_season

  holiday.each do |holiday, supply|
    printing_supply = ""
    string_holiday = holiday.to_s.capitalize!
    
if string_holiday.include?("_")
   temp_array = string_holiday.split("_")
    temp_array.each do |word|
      word = word.capitalize!
    end
string_holiday = temp_array.join(" ")
  end
    supply.each do |supply|
       printing_supply += "#{supply}, "
       
end
crop = (printing_supply.length)-2
puts "  #{string_holiday}: #{printing_supply[0...crop]}"
end
end
end

def all_holidays_with_bbq(holiday_hash)
bbq_array = []
holiday_hash.each do |season, holiday|
  holiday.each do |holiday, supply|
  supply.each do |supply|
    if supply == "BBQ"
      bbq_array << holiday
      bbq_array.flatten
end
end
end
end 
bbq_array
end







