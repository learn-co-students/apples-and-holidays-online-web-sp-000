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
  
  holiday_hash.each do |season, holiday|
    holiday.each do |name, activity|
      return activity[1] if name == :fourth_of_july
    end
  end
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
  # iterate over holiday_hash
  # iterate over holday
  # check to see if the holiday is equal to Christmas and New Year's
  # use the shovel method to add supply to the activity array if true
  holiday_hash.each do |season, holiday|
    holiday.each do |name, activity|
      activity << supply if name == :christmas || name == :new_years
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

  holiday_hash.each do |season, holiday|
    holiday.each do |name, activity|
      activity << supply if name == :memorial_day
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash

  holiday_hash.each do |time_of_year, holiday|
    if time_of_year == season
      holiday_hash[time_of_year].store(holiday_name, supply_array)
    end
  end
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash.each do |season, holiday|
    return holiday.values.flatten if season == :winter
  end
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
    puts "#{season.capitalize}:"
    holiday.each do |name, supplies|
      puts "  #{name.to_s.gsub("_", " ").split(/\W/).map(&:capitalize).join(" ")}: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holidays_with_bbqs = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday_name, supplies|
      holidays_with_bbqs << holiday_name if supplies.include?("BBQ")
    end
  end
  holidays_with_bbqs
end







