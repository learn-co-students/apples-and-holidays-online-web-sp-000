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
  holiday_hash.each do |season, holiday_details|
    if season == :winter
      holiday_details.collect do |attribute, data|
          if attribute == :christmas || :new_years
            data << "Balloons"
end
end
end
end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end



def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  new_data = {season => {holiday_name => supply_array}}
  holiday_hash.merge!(new_data)
  return holiday_hash
end



def all_winter_holiday_supplies(holiday_hash)
 holiday_hash[:winter].values.to_s
end

def all_supplies_in_holidays(holiday_hash)
   holiday_hash.each do |season, holiday_details|
     puts season.to_s.capitalize! + ":"
   holiday_details.each do |holiday, data|
     puts "  #{holiday.to_s.split("_").map{|h| h.capitalize}.join(" ")}: " + data.join(", ")
     
     #split_holiday = holiday.to_s.split
     #split_holiday.each do |holidays| 
     #  holidays.each do |caps_holiday|
      #   multi_word = caps_holiday.capitalize!.join
       #  puts "  " + multi_word + ": " + data.join(", ")
      #else 
       # puts "  " + holidays.capitalize! + ": " + data.join(", ")
end
end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |season, holiday_details|
    
    holiday_details.map do |holiday, data|
     holiday if data.include?("BBQ")
         
         #map

end
#flatten gets rid of nils
#compact gets rid of multiple arrays
end.flatten.compact
end







