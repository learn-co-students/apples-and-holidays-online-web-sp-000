require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
holiday_supplies[:summer][:fourth_of_july][1]

end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_supplies[:winter][:new_years]<<"Balloons"
  holiday_supplies[:winter][:christmas]<<"Balloons"
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_supplies[:spring][:memorial_day]<<supply

end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_supplies[season] = {holiday_name => supply_array}

end

def all_winter_holiday_supplies(holiday_hash)
  holiday_supplies[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holidays| #cant iterate over a symbol
    season.to_s
  puts "#{season.capitalize}:"

  holidays.each do |name, supplies|
    puts "  #{name.to_s.split("_").collect {|split_name| split_name.capitalize}.join(" ")}: #{supplies.join(", ")}"
              end
          end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"\
  all_holidays_BBQ = []

  holiday_hash.each do |season, holidays|
    holidays.each do |name, supplies|
        supplies.each do |x|
          if x.match("BBQ")
            all_holidays_BBQ << name
          end
        end
    end
  end
  all_holidays_BBQ
end
