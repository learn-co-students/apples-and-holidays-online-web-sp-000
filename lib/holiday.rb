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
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end
#puts second_supply_for_fourth_of_july(holiday_hash)

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, season_details_hash|
    if season == :winter
      season_details_hash.each do |holiday, holiday_supplies_array|
        holiday_supplies_array << supply
      end
    end
  end
  holiday_hash
end
#puts add_supply_to_winter_holidays(holiday_hash, "Balloons")

def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, season_details_hash|
    season_details_hash.each do |holiday, holiday_supplies_array|
      if holiday == :memorial_day
        puts holiday_supplies_array
        holiday_supplies_array << supply
      end
    end
  end
  holiday_hash
end
#puts add_supply_to_memorial_day(holiday_hash, "Grill")

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.each do |this_season, season_details_hash|
    if this_season == season
      holiday_hash[this_season][holiday_name] = supply_array
    end
  end
  holiday_hash
end
# columbus_day_supplies = ["Flags", "Parade Floats", "Italian Food"]
# add_new_holiday_with_supplies(holiday_hash, :fall, :columbus_day, columbus_day_supplies)
#
# valentines_day_supplies = ["Cupid Cut-Out", "Candy Hearts"]
# add_new_holiday_with_supplies(holiday_hash, :winter, :valentines_day, valentines_day_supplies)
# puts holiday_hash

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash.each do |season, season_details_hash|
    if season == :winter
      return season_details_hash.values.flatten
    end
  end
end
#puts all_winter_holiday_supplies(holiday_hash).inspect

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, season_details_hash|
    puts "#{season.capitalize}:"
    season_details_hash.each do |holiday, holiday_supplies|
      # h = holiday.to_s
      # if h.include? "_" then h = h.gsub!(/_/, ' ') end
      # puts "  #{h.split(' ').map(&:capitalize).join(' ')}: #{holiday_supplies.join(', ')}"
      puts "  #{holiday.to_s.split('_').map {|word| word.capitalize}.join(" ")}: #{holiday_supplies.join(', ')}"
    end
  end
end
all_supplies_in_holidays(holiday_hash)

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_hash.map do |season, season_details_hash|
    season_details_hash.map do |holiday, holiday_supplies_array|
      if holiday_supplies_array.include? 'BBQ'
        holiday
      end
    end
  end.flatten.compact
end
#puts all_holidays_with_bbq(holiday_hash).inspect
