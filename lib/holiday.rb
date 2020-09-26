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
  # return the second element in the 4th of July array]
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].keys.each do |key|
      if(key == :christmas)
        holiday_hash[:winter][key] << "Balloons"

      else
        holiday_hash[:winter][key] << "Balloons"
      end
    end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_holiday_supplies_array = []
  holiday_hash[:winter].keys.each do |winter_holiday|
    holiday_hash[:winter][winter_holiday].each do |supply|
      winter_holiday_supplies_array << supply
    end
  end
  winter_holiday_supplies_array

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_hash.keys.each do |season|
    seasonStr = season.to_s
    puts  seasonStr.capitalize! << ":"
    holiday_hash[season].keys.each do |holiday|
       String holidayStr = holiday.to_s
       if(holidayStr.include?("_"))
         holidayStrArr = holidayStr.split("_")
         holidayStr = ""
         holidayStrArr.each do |str|
           if(str != holidayStrArr.first)
               holidayStr << " "
           end
           holidayStr << str.capitalize!
         end
       else
         holidayStr.capitalize!
       end
       holidayStr.strip
       holidayStr << ": "
       holiday_hash[season][holiday].each do |supply|
         holidayStr << supply
         if(supply != holiday_hash[season][holiday].last)
           holidayStr << ", "
         end
       end
       puts  "  " + holidayStr
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_array = []
  holiday_hash.keys.each do |season|
    holiday_hash[season].keys.each do |holiday|
      holiday_hash[season][holiday].each do |supply|
        if(supply == "BBQ")
          holiday_array << holiday
        end
      end
    end
  end
  holiday_array
end
