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
  second = ""
  holiday_hash.each do |season, holidays|
    if season == :summer
        holidays.each do |holiday, supplies|
          if holiday == :fourth_of_july
            second = supplies[1]
          end
        end
      end
    end
  second
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |holiday, supplies|
        supplies << supply
      end
    end
  end
  holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday.each do |holiday, supplies|
        supplies << supply
      end
    end
  end
  holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {holiday_name => supply_array}
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holiday|
    puts "#{season.to_s.capitalize!}:"
    holiday.each do |day, supply_list|
        if day.to_s.include?("_")
          array = day.to_s.split("_")
          array.collect do |word|
            word.capitalize!
          end
            puts "  #{array.join(" ")}: #{supply_list.join(", ")}"
          
        else
          puts "  #{day.to_s.capitalize!}: #{supply_list.join(", ")}"
        end
    end
  end
end




def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
holidays_with_bbq = []
holiday_hash.each do |season, holiday|
  holiday.each do |holiday, supplies|
    if supplies.include?("BBQ")
      holidays_with_bbq << holiday
    end
  end
end
holidays_with_bbq     
      
end







