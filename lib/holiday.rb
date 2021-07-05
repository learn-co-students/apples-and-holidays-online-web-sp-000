require 'pry'
holday_hash = {
           :winter => {
             :christmas => ["Lights", "Wreath"],
             :new_years => ["Party Hats"]
            },
            :summer => {
              :fourth_of_july => ["Fireworks", "BBQ"]
            },
            :fall => {
              :thanksgiving => ["Turkey"]
            },
            :spring => {
              :memorial_day => ["BBQ"]
           }
         }

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end


def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, items|
    items << supply
    end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring].each do |holiday, items|
    if holiday == :memorial_day
      items << supply
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    season_str = season.to_s
    puts "#{season_str.capitalize!}:"
    holiday.each do |holiday, holiday_items|
      holiday_str = holiday.to_s
      puts "  #{holiday_str.split("_").map(&:capitalize).join(' ')}: #{holiday_items.join(", ")}"
      end
    end
  end

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []

  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, holiday_items|
      if holiday_items.include?("BBQ")
        bbq_holidays << holiday
      end
    end
  end
  bbq_holidays
end







