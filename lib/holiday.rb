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
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do | holiday, supply_items_array|
    supply_items_array << supply
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {holiday_name => supply_array}
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, specific_holiday_hash|
    puts "#{season.to_s.capitalize}:"
    specific_holiday_hash.each do |holiday_name, supplies_array|
      name_as_array = holiday_name.to_s.split("_")
      name_as_array.map!(&:capitalize)
      puts "  #{name_as_array.join(" ")}: #{supplies_array.join(", ")}"
    end
  end
end


def all_holidays_with_bbq(holiday_hash)
  holidays_with_bbq = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday_name, supply_array|
      if supply_array.include?("BBQ")
        holidays_with_bbq << holiday_name
      end
    end
  end
  holidays_with_bbq
end
