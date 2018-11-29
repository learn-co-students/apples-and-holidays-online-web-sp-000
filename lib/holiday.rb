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
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |holiday, item|
        item << supply
      end 
    end 
  end
end



def add_supply_to_memorial_day(holiday_hash, supply)
 holiday_hash.each do |season, holiday|
    if season == :spring
      holiday.each do |holiday, item|
        item << supply
      end 
    end 
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)

 new_hash = {season => {holiday_name => supply_array}}
 holiday_hash.merge!(new_hash)  

end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_numb = " "
  holiday_hash.each do |season, holiday_name|
    puts "#{season.to_s.capitalize}:" 
    holiday_name.each do |holiday_name, supply_array|
      holiday_numb = holiday_name.to_s.split("_").map{|value| value.capitalize}.join(" ")
        puts "  #{holiday_numb}: #{supply_array.join(", ")}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  null array = []
  bbq_holidays = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holidays, supply_list|
      if supply_list.include?("BBQ")
        bbq_holidays << holidays
      end
    end
  end
  bbq_holidays
end







