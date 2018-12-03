require 'pry'

def second_supply_for_fourth_of_july(holidays_hash)
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
  holidays_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, activities_array|
    activities_array << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  supply_array = []
  holiday_hash[:winter].each do |holiday, supplies|
    supply_array << supplies
  end
  supply_array.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, hash|
    puts "#{season.to_s.capitalize}:"
    hash.each do |holiday, supply_array|
      holiday_array = holiday.to_s.split("_").collect do |word|
        word.capitalize!
      end
      puts "  #{holiday_array.join(" ")}: #{supply_array.join", "}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holidays_with_bbq_array = []
  holiday_hash.each do |season, hash|
    hash.each do |holiday, supplies_array|
      if supplies_array.include?("BBQ")
        holidays_with_bbq_array << holiday
      end
    end
  end
  holidays_with_bbq_array
end







