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
  holiday_hash.each do |seasons, holiday_details_hash| 
holiday_details_hash.each do |attribute, data|
  if attribute == :christmas || attribute == :new_years
    data << "Balloons"
  end
end
end
end


def add_supply_to_memorial_day(holiday_hash, supply)
 holiday_hash.each do |seasons, holiday_details_hash| 
holiday_details_hash.each do |attribute, data|
if attribute == :memorial_day
  data << supply 
  
  end
end
end

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name]= supply_array
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday_details_hash|
   puts "#{season.capitalize}:"
   holiday_details_hash.each do |attribute, data|
    puts "  #{attribute.to_s.split('_').map(&:capitalize).join(' ')}: #{data.join(", ")}"
    
end
end
end

def all_holidays_with_bbq(holiday_hash)
new_array = []
  holiday_hash.keys.each do |season| 
    holiday_hash[season].each do |key, value|            
      new_array << key if value.include? 'BBQ'
    end
  end
  new_array
end








