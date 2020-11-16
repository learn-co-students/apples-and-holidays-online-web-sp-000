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
  holiday_hash.each do |season, seasonal_holiday_hash|
    if season == :winter
      seasonal_holiday_hash.each do |holiday, supplies|
        if holiday == :christmas || :new_years
          supplies.push(supply)
        end
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, seasonal_holiday_hash|
    if season == :spring
      seasonal_holiday_hash.each do |holiday, supplies|
        if holiday == :memorial_day
          supplies.push(supply)
        end 
      end 
    end 
  end 
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {holiday_name => supply_array}
holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
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
  holiday_hash.each do |season, seasonal_holiday_hash|
    puts "#{season.to_s.capitalize!}:"
    seasonal_holiday_hash.each do |holiday, supplies|
      new_array = []
      holiday_array = holiday.to_s.split("_")
        holiday_array.each {|name| new_array << name.capitalize!}
      holiday = new_array.join(" ")
      supply_list = supplies.join(", ")
      puts "  #{holiday}: #{supply_list}"
    end 
  end 
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_array = []
  holiday_hash.each do |season, seasonal_holiday_hash|
    seasonal_holiday_hash.each do |holiday, supplies|
      if supplies.include?("BBQ")
        holiday_array << holiday
      end 
    end 
  end 
  holiday_array
end







