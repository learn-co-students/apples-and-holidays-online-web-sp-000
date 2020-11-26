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
  reaching_into_hash = holiday_hash[:summer]
  second_supply = reaching_into_hash[:fourth_of_july]
  second_supply[1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |holi_hash, season|
    if holi_hash == :winter
      season.each do |attribute, data|
        data << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |holi_hash, season|
    if holi_hash == :spring
      season.each do |attribute, data|
        data << supply
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].collect do |key, value|
    value
  end.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize}:"
    holiday.each do |specific_holiday, supplies|
      holiday_name = specific_holiday.to_s.split("_")
      holiday_name.each do |word|
        word.capitalize!
      end
      new_holiday = holiday_name.join(" ")
      puts "  #{new_holiday}: #{supplies.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  tasty_bbq = []
  holiday_hash.each do |season, holiday|
    holiday.each do |specific_holiday, supplies|
      if supplies.include?("BBQ")
        tasty_bbq << specific_holiday
      end
    end
  end

  tasty_bbq
end
