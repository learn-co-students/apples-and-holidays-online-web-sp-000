

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, supplies|
    supplies << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts "#{season.to_s.capitalize!}:"
    holidays.keys.each do |holiday|
      count = 0
      string_holiday = holiday.to_s.split('_')
      while count < string_holiday.length
        string_holiday[count].capitalize!
        count += 1
      end
      puts "  #{string_holiday.join(' ')}: #{holiday_hash[season][holiday].join(', ')}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holidays_with_bbq = []
  holiday_hash.each do |season, holidays|
    holidays.each do |day, supplies|
      if supplies.include?('BBQ')
        holidays_with_bbq << day
      end
    end
  end
  holidays_with_bbq
end
