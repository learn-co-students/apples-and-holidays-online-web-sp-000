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
  holiday_hash[:winter].each do |holiday, supply_array|
    supply_array << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season.to_sym][holiday_name.to_sym] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = []
  holiday_hash[:winter].each do |holiday, supply_array|
    winter_supplies << supply_array
  end
  winter_supplies.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts "#{season.to_s.capitalize}:"
    holidays.each do |holiday, supplies|
      capitalized = holiday.to_s.split("_")
      capitalized.each {|word| word.capitalize!}
      capitalized = capitalized.join(" ")
      puts "  #{capitalized}: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_keys = []
  holiday_hash.each do |season, holidays|
     holidays.each do |holiday, supply_array|
      if supply_array.include?("BBQ")
        bbq_keys << holiday
      end
    end
  end
  bbq_keys
end
