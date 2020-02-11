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
  holiday_hash[:winter][:new_years][1] = supply
  holiday_hash[:winter][:christmas][2] = supply
  holiday_hash
end 


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
holiday_hash[:spring][:memorial_day][1] = supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
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
  
  holiday_hash.each do |season, holidays|
    puts "#{season.to_s.capitalize}:"
    holidays.each do |holiday, supplies|
      if holiday.to_s.include?("_")
        holiday = holiday.to_s.split('_')
        holiday = holiday.map {|word| word.capitalize}
        holiday = holiday.join(' ')
        puts "  #{holiday}: #{supplies.join(", ")}"
      elsif
      puts "  #{holiday.to_s.capitalize}: #{supplies.join(", ")}"
    end
  end
end
end

        
        
        

def all_holidays_with_bbq(holiday_hash)
  barbie = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supply|
      if supply.include?("BBQ")
        barbie << holiday
      end
    end
  end
  barbie
end







