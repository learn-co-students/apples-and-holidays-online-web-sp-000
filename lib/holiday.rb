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
  holiday_hash

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
  holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  {
    :winter => {
       :christmas => ["Lights", "Wreath"],
       :new_years => ["Party Hats"]
     },
     :summer => {
       :fourth_of_july => ["Fireworks", "BBQ"]
     },
     :fall => {
       :thanksgiving => ["Turkey"]
     },
     :spring => {
       :memorial_day => ["BBQ"]
     }
   }
  
  holiday_hash[season.to_sym][holiday_name.to_sym] = supply_array
  
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = []
  holiday_hash[:winter].each do |holiday, supplies|
    supplies.each do |supply|
      winter_supplies << supply
    end
  end
 
  winter_supplies

end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts season.to_s.capitalize + ":"
    holiday.each do |holiday, supplies|
      hol = holiday.to_s.split('_')
      hol.each do |str|
        str.capitalize!
      end
      puts "  #{hol.join(" ")}: #{supplies.join(', ')}"
      
    end
  end

end

def all_holidays_with_bbq(holiday_hash)
  with_bbq = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, supplies|
      with_bbq << holiday if supplies.include?("BBQ")
    end
  end
 
  with_bbq

end







