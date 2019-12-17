require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
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
  holiday_hash[:summer][:fourth_of_july][1]
end

# add the second argument, which is a supply, to BOTH the
# Christmas AND the New Year's arrays
# find winter holidays
# add data to the array
def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, specific_holidays_hash|
    if season == :winter
      specific_holidays_hash.each do |holiday_name_key, data|
        if holiday_name_key == :christmas || holiday_name_key == :new_years
          data << supply
        end
      end
    end
  end
end

# again, holiday_hash is the same as the ones above
# add the second argument to the memorial day array
def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, specific_holidays_hash|
    if season == :spring
      specific_holidays_hash.each do |holiday_name_key, data|
        if holiday_name_key == :memorial_day
          data << supply
        end
      end
    end
  end
end


# Write a method that adds a new holiday and its associated supplies to any season
# remember to return the updated hash
def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash

end



  # return an array of all of the supplies that are used in the winter season
def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end


# iterate through holiday_hash and print items such that your readout is:
def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday_name|
    puts season.to_s.capitalize! + ":"
      holiday_name.each do |holiday, value|
        best_holiday = holiday.to_s.split("_").collect {
          |name| name.capitalize!
        }.join(" ")
      puts "  #{best_holiday}: #{value.join(", ")}"
      end
  end
end



# return an array of holiday names (as symbols) where supply lists
# include the string "BBQ"
def all_holidays_with_bbq(holiday_hash)
  holiday_hash.collect do |season, holidays|
    holidays.collect do |holiday, value|
      holiday if value.include?("BBQ")
    end
  end.flatten.compact
end
