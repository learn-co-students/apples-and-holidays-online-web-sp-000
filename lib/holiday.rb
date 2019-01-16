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
  holiday_hash[:winter][:christmas] << supply
  holiday_hash[:winter][:new_years] << supply
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  retArray = []
  holiday_hash.each do |attr, data|
    retArray += data.values.flatten
  end
  retArray
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |attr, data|
    puts "#{attr.to_s.capitalize!}:"
    data.each do |attribute, val|
      str = "  #{attribute.to_s.split("_").each{|x| x.capitalize!}.join(" ")}: #{val.join(", ")}"
      puts str
    end
  end

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  retArray = []
  holiday_hash.each do |attr, data|
    data.each do |attribute, value|
      if value.include?("BBQ")
        retArray << attribute
      end
    end
  end
  retArray
end

#rspec ./spec/holiday_spec.rb:85 # holiday_supplies_hash #all_winter_holiday_supplies has all the winter supplies
#rspec ./spec/holiday_spec.rb:128 # holiday_supplies_hash #all_supplies_in_holidays should output the formatted list of holidays and their supplies
#rspec ./spec/holiday_spec.rb:146 # holiday_supplies_hash #all_holidays_with_bbq should return :fourth_of_july and :memorial_day






