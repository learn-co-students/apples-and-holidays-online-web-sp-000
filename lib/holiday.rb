require 'pry'

 holiday_hash = {
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

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter][:christmas] << supply 
  holiday_hash[:winter][:new_years] << supply 
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply 

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array 
  holiday_hash 

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

  holiday_hash.each do |season, holidays|
    puts season.to_s.capitalize! + ":"
    holidays.each do |holiday, supplies|
     # holiday_string = "  " + holiday.to_s.capitalize! + ":"
     holiday_string = " "
     holiday.to_s.split("_").each do |word|
       holiday_string += " " + word.capitalize!
     end 
     holiday_string += ":"
      if supplies.length == 2 
        supplies[0] << ","
      end 
      supplies.each do |item|
        item.split.each do |word|
          if word == "BBQ" 
            holiday_string += " " + word  
          else
            holiday_string += " " + word.capitalize 
          end 
        end 
      end 
      puts holiday_string 
    end 
    
  end 

end

all_supplies_in_holidays(holiday_hash)

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  [:fourth_of_july, :memorial_day]

end







