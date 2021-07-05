require 'pry'
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

def second_supply_for_fourth_of_july(holiday_hash)
     holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each do |holiday, item_list|
    item_list.push(supply)
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] = supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday_list|
    puts season.to_s.capitalize+":"

    holiday_list.each do |holiday, supply_list|
      puts "  "+holiday.to_s.split("_").collect{ |word| word.capitalize}.join(" ")+": "+supply_list.join(", ")
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
   bbq_holiday = []

   holiday_hash.collect do |season, holiday_list|
      holiday_list.select do |holiday, supply_list|
         if supply_list.find {|supply| supply == "BBQ"}
            bbq_holiday.push(holiday)
         end
      end
   end

   bbq_holiday
end
