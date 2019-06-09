require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  
  return holiday_hash[:summer][:fourth_of_july][1]
 
 
  
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |name, array|
        array << supply
      end    
    end
  end
    
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

end


def add_supply_to_memorial_day(holiday_hash, supply)
  
holiday_hash[:spring][:memorial_day] << supply
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
    holiday_hash[season][holiday_name] = supply_array
    return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
    holiday_hash[:winter].values.join(",") 
  # return an array of all of the supplies that are used in the winter season

end

def all_supplies_in_holidays(holiday_hash)
  holiday_name = ""
  holiday_list = ""
  holiday_hash.each do |season,holidays|
   puts season.to_s.capitalize! + ":"
       holidays.each do |holiday,supplies|
      
       holiday_name = holiday.to_s.split("_")
       split_word = holiday_name.collect do |name|
          name.capitalize
          end.join(" ")
     
       holiday_list = supplies.join(", ")
  puts "  #{split_word}: #{holiday_list}"
       end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_holiday = []
  holiday_hash.each {|season,holidays|
      holidays.each  {|holiday,supplies|
          supplies.collect {|supply|
          if supply == "BBQ"
          bbq_holiday << holiday
          end}
      }
       
    }
    return bbq_holiday
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

end







