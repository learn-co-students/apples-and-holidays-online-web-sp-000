require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
holiday_hash[:summer][:fourth_of_july][1]
end 

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |key, value|
    if key == :winter
      value.each do |new_key, new_value|
        new_value << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |key, value|
    if key == :spring
      value.each do |new_key, new_value|
        new_value << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
   holiday_supplies[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  items = []
  holiday_hash[:winter].each do |holiday, supply|
    items << supply
  end
  items.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays| 
    puts "#{season.to_s.capitalize}:"
      holidays.each do |holiday, items| 
        puts "  #{holiday.to_s.split("_").each{|x| x.capitalize!}.join(" ")}: #{(items.join(", "))}"
      end
  end
end

def all_holidays_with_bbq(holiday_hash)
  barbeque = []
    holiday_hash.each do |season, holidays|
      holidays.each do |holiday, items|
        if items.include? "BBQ"
          barbeque << holiday
        end
      end
    end
  barbeque
end
  







