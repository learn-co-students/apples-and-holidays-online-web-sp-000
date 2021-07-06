require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, value|
    value << supply
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
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize}:"
    holiday.each do |holiday_event, supply|
      puts "  #{holiday_event.to_s.split("_").each{|element| element.capitalize!}.join(" ")}: #{supply.join(", ")}" 
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  array_symbols = []
  holiday_hash.each do |season, event|
    event.each do |holiday_event, supply|
      array_symbols << holiday_event if supply.include?("BBQ")
    end
  end
  array_symbols
end







