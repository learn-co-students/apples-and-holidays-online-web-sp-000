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
end
require 'pry'
def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, season_details|
    season_details.each do |attribute, data|
      data << supply
  end
end
end


def add_supply_to_memorial_day(holiday_hash, supply)
 holiday_hash.each do |season, season_details|
    season_details.each do |attribute, data|
      data << supply
  end
end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season] = {holiday_name => supply_array}
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
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
  holiday_hash.each do |season, holiday_name|
    puts "#{season.capitalize}:"
    holiday_name.each do |holiday_name, supply_array|
      puts"  #{holiday_name.to_s.split('_').collect {|name| name.capitalize!}.join(' ') }: #{supply_array.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_hash.collect do |season, holiday_name|
  holiday_name.collect do |holiday_name, supply_array|
   if supply_array.include?("BBQ")
     holiday_name
   end
  end
end.flatten.compact
end


