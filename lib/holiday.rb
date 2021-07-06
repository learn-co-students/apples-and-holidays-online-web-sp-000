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
  holiday_hash[:winter].each do |name, supplies|
    supplies << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash.each do |name, season_hash|
    season_hash[holiday_name] = supply_array
  end
  # remember to return the updated hash
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  supply_array = []
  holiday_hash.each do |season, holiday|
     if season == :winter
      holiday.each do |holiday, supplies|
        supply_array << supplies
      end
    end
  end
  supply_array.to_s
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, days|
    puts "#{season.to_s.capitalize}:"
    days.each do |holidays, supply_list|
      holidays = holidays.to_s.split("_")
      holidays = holidays.collect do |single_holiday| 
        single_holiday.capitalize
      end
      puts "  #{holidays.join(" ")}: #{supply_list.join(", ")}"
    end
  end 
end

def all_holidays_with_bbq(holiday_hash)
  fiery_holidays = []
  holiday_hash.each do |season, days|
    days.each do |day, supplies|
      if supplies.include?("BBQ")
        fiery_holidays << day
      end
    end
  end
  fiery_holidays
end







