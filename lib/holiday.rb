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
holiday_hash[:winter].each do |holiday, thing|
  thing << supply
# [:christmas] << "Balloons"
# holiday_hash[:winter][:new_years] << "Balloons"
end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
 holiday_hash[:spring][:memorial_day].push(supply)

  # holiday_hash[:spring][:memorial_day] << "Table Cloth"

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
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
 holiday_hash.each do |season, info|
   puts "#{season.capitalize}:"
    info.each do |holiday, supply|
      puts "  #{holiday.to_s.split("_").map {|i| i.capitalize}.join(" ")}: #{supply.join(", ")}"


    # info.each do |holiday, supplies|
    #   puts "#{holiday.capitalize}: #{supplies}"
end
end
end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
answer = []
 holiday_hash.each do |season, holiday|
   holiday.each do |holiday, supply|
      answer << holiday if supply.include?("BBQ")
     end
   end
   answer
 end
