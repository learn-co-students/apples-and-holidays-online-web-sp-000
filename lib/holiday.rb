require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |i, j|
    if i == :winter
      j.each do |k, l|
        l.push(supply)
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |i, j|
    if i == :spring
      j.each do |k, l|
        l.push(supply)
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_supplies[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize!}:"
    holiday.each do |day, supply|
      dayArray = []
      day.to_s.split("_").each do |i|
        dayArray.push(i.capitalize!)
      end
      capDay = dayArray.join(" ")
      puts "  #{capDay}: #{supply.join(", ")}"
    end
  end
end


def all_holidays_with_bbq(holiday_hash)
  holidayArray = []
  holiday_supplies.each do |season, holidayHash|
    holidayHash.each do |holiday, supply|
      if supply.include?("BBQ")
        holidayArray.push(holiday)
      end
    end
  end
  return holidayArray
end







