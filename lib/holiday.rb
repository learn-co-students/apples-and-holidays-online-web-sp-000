require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:

  #holiday_hash = {
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
    
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
  holiday_hash[:winter].each do |holiday, supplies| 
    if holiday == :christmas || holiday == :new_years
        supplies.push(supply)
    end 
  end 
 
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
  holiday_hash[:spring][:memorial_day].push(supply)

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
     holiday_hash[season][holiday_name] = supply_array
     holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  all_supplies = []
  holiday_hash[:winter].each do |holiday, supplies|
    all_supplies = all_supplies + supplies
  end 
  all_supplies
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  holiday_hash.each do |season, holiday|
    season_string = season.to_s.capitalize
    
    puts "#{season_string}:"
    day_array = []

    holiday.each do |day, supplies|
        #global substitute 
        day_string = day.to_s.gsub("_", " ")
        
        #turn to array so we can capitalize each element 
        day_array = day_string.split 
        day_array.collect {|day| day.capitalize!}
        
        #turn back to string, add space between 
        day_string = day_array.join(" ")
        
        #supplies is array, convert to string 
        supplies_string = supplies.join(", ")
        puts "  #{day_string}: #{supplies_string}"

     end 
  end 

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_array = []
  holiday_hash.each do |season, holiday| 
    holiday.each do |day, supplies| 
      #supplies is array so look for "BBQ"
      if supplies.include?("BBQ")
        holiday_array << day 
      end 
    end 
  end 
  return holiday_array
        
end







