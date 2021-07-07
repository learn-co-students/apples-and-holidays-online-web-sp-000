#Hash:
holiday_supplies = {
  :winter => {:christmas => ["Lights", "Wreath"], :new_years => ["Party Hats"]},
  :summer => {:fourth_of_july => ["Fireworks", "BBQ"]},
  :fall   => {:thanksgiving => ["Turkey"]},
  :spring => {:memorial_day => ["BBQ"]}
}

#Method 1: returns the string 'BBQ' without hardcoding it
def second_supply_for_fourth_of_july(holiday_supplies)
  holiday_supplies[:summer][:fourth_of_july][1]
end
second_supply_for_fourth_of_july(holiday_supplies)

#Method 2: iterates through winter holidays adds a supply to each one
def add_supply_to_winter_holidays(holiday_hash, item)
 holiday_hash[:winter].each do |holiday, decorations|
   decorations << item
  end
end

#Method 3: (another option for above) iterates through winter holidays adds a supply to each one
def add_supply_to_winter_holidays(holiday_hash, item)
 holiday_hash[:winter].each do |holiday, decorations|
   decorations.push(item)
  end
end
add_supply_to_winter_holidays(holiday_supplies, "Baloons")

#Method 4: adds a supply to memorial day
def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day].push(supply)
end
add_supply_to_memorial_day(holiday_supplies, "baloons")

#Method 5: adds a different supply to memorial day
def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end
add_new_holiday_with_supplies(holiday_supplies, :fall, :succas, ["lulav", "esrog", "schach"])

#Method 6: modifies the original hash by adding supplies of a new holiday to a season
def add_new_season_and_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season] = {holiday_name => supply_array} # the new echelon being created is to the left of the equals sign.
  holiday_hash
end
mitzvos = ["seder", "matzah", "hagaddah"]
add_new_season_and_holiday_with_supplies(holiday_supplies, :aviv, :pesach, mitzvos)

#Method 7: has all the winter supplies
def all_winter_holiday_supplies(holiday_hash)
  holiday_hash[:winter].values.flatten
end
all_winter_holiday_supplies(holiday_supplies)

#Method 8: should output the formatted list of holidays and their supplies
def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do | season, holiday|
     puts "#{season.capitalize}:"
     holiday.each do |holiday, item|
       puts "  #{holiday.to_s.split("_").map {|i| i.capitalize}.join(" ")}: #{item.join(", ")}"
     end
  end
end
all_supplies_in_holidays(holiday_supplies)

#Method 9: should return :fourth_of_july and :memorial_day
def all_holidays_with_bbq(holiday_hash)
  holiday_hash.map do |season, holiday|
    holiday.map do |holiday, item|
      holiday if item.include?("BBQ")
    end
  end.flatten.compact
end
all_holidays_with_bbq(holiday_supplies)
