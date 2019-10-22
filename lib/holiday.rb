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
  s = season.to_sym
  h = holiday_name.to_sym

  holiday_hash[s][h] = supply_array
  return holiday_hash

end



def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  array = []
  holiday_hash.each do |season, holidays|
    s = season.to_s.to_sym
    if s == :winter
      holiday_hash[:winter].each do |holidays, supply|
        array.push(supply)
      end
    end
  end
  return array.flatten
end



def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holidays|
    season.to_s
    holidays.to_s
    season.capitalize!
    holdidays.capitalize!
    season.to_sym
    holidays.to_sym
  end

end


def all_supplies_in_holidays(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"

  holiday_hash.each do |season, holidays|

    puts season.to_s.capitalize + ":"

    holidays.each do |holiday, supply|
      split_holiday = holiday.to_s.split("_")

      i = 0
      while i < split_holiday.length
        split_holiday[i].capitalize!
        i += 1
      end

      holiday_string = split_holiday.join(" ")
      puts "\s #{holiday_string}: #{supply.join(", ")}"
    end
  end
end


def all_holidays_with_bbq(holiday_hash)

  bbq_holidays = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, supply|
      if supply.include? "BBQ"
        bbq_holidays.push(holiday)
      end
    end
  end
  bbq_holidays
end
