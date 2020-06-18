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
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  
  holiday_hash[:spring][:memorial_day] << supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  new_holiday = {holiday_name => supply_array}
  holiday_hash.each do |attribute, data|
    if attribute == season
      holiday_hash[attribute] = new_holiday
    end
  end
    
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
  
  holiday_hash.each do |key, hash|
    season = key.to_s
    season.capitalize!
    puts "#{season}:"
      hash.each do |key, hash|
        holiday = key.to_s
        if holiday.include?("_")
          holiday_array = holiday.split("_")
          holiday_array.each do |word|
            word.capitalize!
          end
        supplies = hash.join(", ")
        holiday_string = holiday_array.join(" ")
        puts "  #{holiday_string}: #{supplies}"
        else
          holiday.capitalize!
          supplies = hash.join(", ")
          puts "  #{holiday}: #{supplies}"
        end
      end
    end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_array = []
  holiday_hash.each do |season, hash|
    hash.each do |holiday, hash|
      if hash.include?("BBQ")
        holiday_array << holiday
      end
    end
  end
holiday_array
end







