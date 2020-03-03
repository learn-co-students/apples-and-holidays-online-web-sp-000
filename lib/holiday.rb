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
  return holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each { |arr|
    arr[1] << supply
  }
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring].each { |arr| arr[1] << supply }
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  return holiday_hash
end

require 'pry'

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  arr = []
  holiday_hash[:winter].each do
    |hash| hash[1].each { |item| arr << item }
  end
  return arr
end

def all_supplies_in_holidays(holiday_hash)
  # loop over full hash
  holiday_hash.keys.each do |season|
    # put capitalized season string with colon
    puts season.to_s.capitalize + ":"
      # loop over the holidays in the season
      holiday_hash[season].keys.each do |holiday|
        # set up indentation
        holiday_str = '  '
        # convert snake case to capitalized in array
        holiday_caps = holiday.to_s.split('_').map { |word| word.capitalize }
        # convert capitalized array into string with spaces and colon
        holiday_str += holiday_caps.join(' ') + ": "
        # loop over supply array using _with_index to correctly add commas
        holiday_hash[season][holiday].each_with_index do |supply, idx|
            # add supply to the string
            holiday_str += supply
            # add a comma if this isn't the last supply
            holiday_str += ", " if idx + 1 < holiday_hash[season][holiday].size
        end
        puts holiday_str
      end
    end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  arr = []
  holiday_hash.keys.each do |season|
    holiday_hash[season].keys.each do |holiday|
      holiday_hash[season][holiday].each do |supply|
        arr << holiday if supply.match("BBQ")
      end
    end
  end
  return arr
end
