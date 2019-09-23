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
     holiday.to_s.split.each do |holidays|
        new_value= holidays.capitalize!
     puts "  " + new_value + ": " + data.join(", ")
end
end


     
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.


end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.each do |season, holiday_details|
    holiday_details.each do |holiday, data|
      if data.include? "BBQ"
         return [holiday]
end
end
end
end







