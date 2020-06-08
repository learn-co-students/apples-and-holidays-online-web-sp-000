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
  #binding.pry
  holiday_hash.each do |season, data|
    #binding.pry
    if season == :winter
      data.each do |holiday, supplies|
        
        #binding.pry
        supplies << supply
      end
    end
  end

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, data|
    #binding.pry
    if season == :spring
      data.each do |holiday, supplies|
        
        #binding.pry
        supplies << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  returnArray = []
  winter_holiday = holiday_hash[:winter]
  winter_holiday.each do |holiday, supplies|
    supplies.each do |supply|
      returnArray.push(supply)
    end
  end
  returnArray
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
    
    putSeason = season.to_s
    putSeason.capitalize!
    putSeason = putSeason + ":"
    puts putSeason
    #binding.pry
    holidays.each do |holiday, supplies|
      #binding.pry
      putHoliday = holiday.to_s.split("_")
      #binding.pry
      if putHoliday.length == 2
        putHoliday[0].capitalize!
        putHoliday[1].capitalize!
        putHoliday.join(" ")
        #binding.pry
        putHoliday = "  " + putHoliday[0] + " " + putHoliday[1] + ":"
      elsif putHoliday.length == 3
        putHoliday[0].capitalize!
        putHoliday[1].capitalize!
        putHoliday[2].capitalize!
        putHoliday.join(" ")
        #binding.pry
        putHoliday = "  " + putHoliday[0] + " " + putHoliday[1] + " " + putHoliday[2] + ":"
      else
        putHoliday = "  " + putHoliday[0].capitalize + ":"
      end
      i = 0
      supplies.each do |supply|
        if i == 0 && supplies.length > 1
          putHoliday = putHoliday + " " + supply + ", "
          i += 1
        elsif supplies.length > 1
          putHoliday = putHoliday + supply
        else
          putHoliday = putHoliday + " " + supply
        end
        
      end
      puts putHoliday
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  returnArray = []
  holiday_hash.each do |season, holidays|
    #binding.pry
    holidays.each do |holiday, supplies|
      #binding.pry
      supplies.each do |supply|
        #binding.pry
        if supply == "BBQ"
          returnArray << holiday
        end
      end
    end
  end
  returnArray
end







