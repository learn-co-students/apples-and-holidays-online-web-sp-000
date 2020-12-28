require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
    needed_supply = holiday_hash [:summer] [:fourth_of_july]
    return needed_supply[1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
    updated_supply_C = holiday_hash [:winter] [:christmas] << "Balloons"
    updated_supply_NY = holiday_hash [:winter] [:new_years] << "Balloons"
end

def add_supply_to_memorial_day(holiday_hash, supply)
    first_supply_MD = holiday_hash [:spring] [:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
    holiday_hash[season][holiday_name] = supply_array
    return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  winter_supplies = []
  holiday_hash[:winter].each do |holiday, supplies|
    supplies.each do |supply|
      winter_supplies << supply
    end
  end
  return winter_supplies
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts "#{season.capitalize}:"
      holidays.each do |holiday, supplies|
        holiday_words = holiday.to_s.split('_')
        holiday_words.each_with_index do |word, index|
          holiday_words[index] = word.capitalize
        end
        puts "  #{holiday_words.join(' ')}: #{supplies.join(', ')}"
      end
  end
end

def all_holidays_with_bbq(holiday_hash)
  bbq_holidays = []
  holiday_hash.each do |season, holiday|
    holiday.each do |holiday, supplies|
      if supplies.include?("BBQ")
      bbq_holidays << holiday
      end
    end
  end
  return bbq_holidays
end



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
