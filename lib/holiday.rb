require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  hash = {
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

  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  winter = holiday_hash[:winter]
  winter.each do |holiday, supplies|
    supplies.push(supply)
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[:"#{season}"][:"#{holiday_name}"] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  supplies_array = []
  winter_supplies = holiday_hash[:winter]
  winter_supplies.each do |holiday, array|
    array.each do |item|
      supplies_array.push(item)
    end
  end
  supplies_array
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.each do |holiday_name, supply_array|
      holiday = (holiday_name.to_s.split("_").collect { |word| word.capitalize }).join(" ")
      supplies = supply_array.join(", ")
      puts "  #{holiday}: #{supplies}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  holidays_with_bbqs = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday_name, supply_array|
      supply_array.each do |item|
        holidays_with_bbqs.push(holiday_name) if item == "BBQ"
      end
    end
  end
  holidays_with_bbqs
end
