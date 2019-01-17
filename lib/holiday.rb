require 'pry'

def second_supply_for_fourth_of_july(holiday_supplies)
holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_supplies, new_item)
  holiday_supplies[:winter].each do |event, items|
  items << new_item
  end
end

def add_supply_to_memorial_day (holiday_supplies, new_item)
holiday_supplies[:spring][:memorial_day] << new_item
end

def add_new_holiday_with_supplies (holiday_supplies, season, holiday, supplies)
holiday_supplies[season].store(holiday, supplies)
end

def all_winter_holiday_supplies(holiday_supplies)
holiday_supplies[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_supplies)
  holiday_supplies.each do |season, value|
    puts "#{season.to_s.capitalize!}:"
      value.each do |holiday, supplies|
      temp = holiday.to_s
      temp2 = temp.split(/ |\_/).map(&:capitalize).join(" ")
      puts "  #{temp2}: #{supplies.join(", ")}"
      end
  end
end

def all_holidays_with_bbq(holiday_supplies)
result = []
  holiday_supplies.each do |season, occation|
    occation.each do |holiday, supplies|
      if supplies.include?("BBQ")
        result << holiday
      end
    end
  end
  result
end
