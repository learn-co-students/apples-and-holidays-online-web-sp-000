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
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter][:christmas].push(supply)
  holiday_hash[:winter][:new_years].push(supply)

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
   holiday_hash[:spring][:memorial_day].push(supply)
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
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

  puts 'Winter:'
  puts "  Christmas: #{holiday_hash[:winter][:christmas].join(', ')}"
  puts "  New Years: #{holiday_hash[:winter][:new_years].join(', ')}"
  puts "Summer:"
  puts "  Fourth Of July: #{holiday_hash[:summer][:fourth_of_july].join(', ')}"
  puts "Fall:"
  puts "  Thanksgiving: #{holiday_hash[:fall][:thanksgiving].join(', ')}"
  puts "Spring:"
  puts "  Memorial Day: #{holiday_hash[:spring][:memorial_day].join(', ')}"
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  fn = []
  holiday_hash.each_value do |value|
    if value.length < 2
      # puts "#{value}"
      # puts "#{value.length}"
      key = value.keys
      item_values =value.values[0]
      # puts "#{key} #{item_values}"
      if item_values.include? 'BBQ'
        fn.push(key[0])
      end
    end
  end

  fn
end
