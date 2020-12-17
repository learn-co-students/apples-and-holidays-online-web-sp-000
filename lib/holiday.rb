require 'pry'

def second_supply_for_fourth_of_july(holiday_supplies_hash)
  # given that holiday_hash looks like this:
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
  # return the second element in the 4th of July array 
 
  holiday_supplies[:summer][:fourth_of_july][1]
end 


def add_supply_to_winter_holidays(holiday_supplies_hash, supply)
  
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  #  AND  New Year's arrays
 
  holiday_supplies_hash.each do |season, holiday|
    if season == "winter"
      season.each do |holiday, supply| 
        if holiday == "christmas" 
         {holiday_supplies_hash[:supplies] ||= [] << "Balloons"
         puts [holiday_supply_hash][:winter][christmas][:supply]
        elsif holiday == "new_years"
          {holiday_supplies_hash[:supplies] ||= []} << "Balloons"
  puts [holiday_supplies_hash][:winter][:new_years][:supply] 
  
  #(hash[key] ||= []) << value
end 
end
end 
end
end 


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

 end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash  
  
  end



def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
end 
