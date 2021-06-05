#somehowmylabdidnt have any comments to follow???
#Some of this may have been done a funky way, but it was i didnt have the comments to follow, and all the tests pass.

def second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_supplies, supply)
  holiday_supplies[:winter].each do |holiday, supplies|
    supplies << supply
  end
end

def add_supply_to_memorial_day(holiday_supplies, supply)
  holiday_supplies[:spring].each do |holiday, supplies|
    supplies << supply
  end
end

def add_new_holiday_with_supplies(holiday_supplies, season, holiday_name, supply)
  holiday_supplies[season][holiday_name]=supply
end

def all_winter_holiday_supplies(holiday_supplies)
  #codeit
  supplies = []
holiday_supplies[:winter].each do |holiday, supply_array|
  supplies.concat(supply_array)
end
  supplies.flatten!
  return supplies
end

def all_supplies_in_holidays(holiday_supplies)
  holiday_supplies.each do |season, holiday|
    puts "#{season.to_s.capitalize!}:"
    holiday.each do |name, supplies|
      name_array = name.to_s.split("_")
      holiday_name = []
      name_array.each do |word|
        holiday_name << word.capitalize!
      end
      holiday=holiday_name.join(" ")
      supplies = supplies.join(", ")
      puts "  #{holiday}: #{supplies}"
    end
  end
end

def all_holidays_with_bbq(holiday_supplies)
  holidays_with_bbq=[]
  holiday_supplies.each do |season, name|
    name.each do |holiday, supplies|
      supplies.each do |supply|
        if supply == "BBQ"
          holidays_with_bbq << holiday
        end
      end
    end
  end
  holidays_with_bbq
end
