def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]
end

#binding.pry

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, data|
    if season == :winter
      data.each do |holiday, item|
        item.push(supply)
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, data|
    if season == :spring
      data.each do |holiday, item|
        item.push(supply)
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, data|
    puts season.to_s.capitalize! + ":"
    data.each do |holiday, item|
      puts "  #{holiday.to_s.gsub("_", " ").split.map{|item| item.capitalize}.join(' ') }" + ": #{item.join(', ')}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_holiday_array = []
  holiday_hash.each do |season, data|
    data.each do |holiday, item|
      if item.include?("BBQ")
        bbq_holiday_array << holiday.to_sym
      end
    end
  end
  bbq_holiday_array
end
