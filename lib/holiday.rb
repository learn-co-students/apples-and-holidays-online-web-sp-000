require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
   holiday_supplies[:summer][:fourth_of_july][1]

  
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
end

def add_supply_to_winter_holidays(holiday_hash, supply)

holiday_supplies[:winter][:christmas][1] = "Balloons"
holiday_supplies[:winter][:new_years][1] = "Balloons"
end


def add_supply_to_memorial_day(holiday_hash, supply)
 
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
holiday_hash[:spring][:memorial_day] << supply
end



def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
holiday_hash[season][holiday_name] = supply_array
  holiday_supplies
end

def all_winter_holiday_supplies(holiday_hash)
    holiday_hash[:winter].map do |words, supply|
  
    supply
  end.flatten         # gets read of extra end of arrays
end


def all_supplies_in_holidays(holiday_hash)
   holiday_hash.each do |season, holiday|
   puts "#{season.capitalize}:"
     holiday.each do |holiday_name, supply|
     puts "  #{holiday_name.to_s.split("_").collect{|split_name| split_name.capitalize}.join(" ")}: #{supply.join(", ")}"
     end
   end
end
 



def all_holidays_with_bbq(holiday_hash)
holiday_hash.map do |season, holiday|
  holiday.map do |holiday_name, supplys|
   supplys.include?("BBQ") ? holiday_name : nil
  
   end
  end.flatten.compact
end







