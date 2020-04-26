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

holiday_hash.each do |season, name_of_holiday|
  if season == :winter
    name_of_holiday.each do |attribute, data|
      data[2] = supply
    end
#Did the below first to help visualize what was happening in the iteration
#holiday_hash[:winter][:christmas][2] = supply
#holiday_hash[:winter][:new_years][2] = supply
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
holiday_hash[:spring][:memorial_day][1] = supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
 holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  (holiday_hash)
  holiday_hash.each do |season, holiday|
      puts season.to_s.capitalize! << ":"
      holiday.each do |holiday, supplies|
        supplies = supplies.join(", ")
        holiday = holiday.to_s.split("_").collect {|w| w.capitalize}.join(" ")<< ":"
        puts "  " + holiday + " " + supplies
      end
    end
  end


# iterate through holiday_hash and print items such that your readout resembles:
# Winter:
#   Christmas: Lights, Wreath
#   New Years: Party Hats
# Summer:
#   Fourth Of July: Fireworks, BBQ
# etc.

def all_holidays_with_bbq(holiday_hash)
  summer_holiday_array = []
  holiday_hash.each do |season, data|
    data.each do |holiday, value|
      value.each do |supply|
       if supply == "BBQ"
          summer_holiday_array.push(holiday)
        end
      end
    end
  end
    summer_holiday_array
  end
