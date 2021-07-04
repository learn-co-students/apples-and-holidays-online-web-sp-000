require 'pry'

holiday_hash = {
  :winter => {
    :christmas => ["Lights", "Wreath"],
    :new_years => ["Party Hats"]
  },
  :summer => {
    :fourth_of_july => ["Fireworks", "BBQ"]
  },
  :fall => {
    :thanksgiving => ["Turkey"]
  },
  :spring => {
    :memorial_day => ["BBQ"]
  }
}

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # holiday_hash = {
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
  # # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |holiday, supply_array|
        supply_array << supply
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday.each do |holiday, supply_array|
        if holiday == :memorial_day
          supply_array << supply
        end
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, given_season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash

  # holiday_hash = {
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

  holiday_hash.each do |season, holiday|
    if season == given_season
      holiday_hash[given_season][holiday_name] = supply_array
    end
  end
end
# add_new_holiday_with_supplies(holiday_hash, :winter, :blerk_day, ["plumbus", "shleem"])

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
  holiday_hash.each do |season, holiday_hersh|
    puts "#{season.capitalize}:"
    holiday_hersh.each do |holiday_hersh, supply_array|
      puts "  #{holiday_hersh.to_s.split("_").map {|holiday_word| holiday_word.capitalize}.join(" ")}: #{supply_array.join(", ")}"
    end
  end
end
# all_supplies_in_holidays(holiday_hash)

def all_holidays_with_bbq(holiday_hash)
  holiday_hash.collect do |season, holiday|
    holiday.collect do |holiday, supply_array|
      if supply_array.include?("BBQ")
        holiday
      end
    end
  end.flatten.compact
end
# all_holidays_with_bbq(holiday_hash)


