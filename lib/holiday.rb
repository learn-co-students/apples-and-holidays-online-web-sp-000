require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)

   {
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
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)

  holiday_hash[:winter].each do |key, value|

    if key == :christmas
      value << supply
    elsif key == :new_years
      value << supply
    end
  end
  holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)

  holiday_hash.each do |key, value|
    key_cap = key.capitalize
    puts "#{key_cap.to_s}:"

      value.each do |sec_key, sec_value|
        all_cap = sec_key.to_s.split('_').map(&:capitalize).join(' ')
        puts "  #{all_cap}: #{sec_value.join(", ")}"
      end
  end
end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_included = []
    holiday_hash.each do |key, value|
      value.each do |sec_key, sec_value|
        if sec_value.include?("BBQ")
          bbq_included << sec_key
        end
      end
    end
  return bbq_included
end
