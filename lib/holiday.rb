require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  x = []
  holiday_hash.each do |season, holiday|
    if season == :summer 
      holiday.each do |name, attributes|
        x << attributes[1]
      end
    end
  end
  x[0]
end
  
def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday_hash[:winter][:christmas] = supply
      holiday_hash[:winter][:new_years] = supply
    end
  end
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday_hash[:spring][:memorial_day] = supply
      # holiday_hash[:spring][:memorial_day] = supply
    end
  end
end
  
def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, 
  supply_array)
  # binding.pry
  holiday_hash.each do |quarter, celebration|
    if quarter == season
      # holiday_hash[season] = holiday_name
      holiday_hash[season][holiday_name] = supply_array
    end
  end
  holiday_hash
end

# return an array of all of the supplies that are used in the winter season

def all_winter_holiday_supplies(holiday_hash)
  array = []
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |holiday, supplies|
        supplies.each do |eachsupply|
          array << eachsupply
        end
      end
    end
  end
  array
end


  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts "#{season.capitalize}:"
    holiday.each do |eachholiday, supplies|
      puts "  #{eachholiday.to_s.split('_').each {|x| x.capitalize!}.join(' ')}: #{supplies.join(', ')}"
    end
  end
end


# return an array of holiday names (as symbols) where supply lists
# include the string "BBQ"

def all_holidays_with_bbq(holiday_hash)
  x = []
  holiday_hash.each do |seasons, holidayshash|
    holidayshash.each do |holiday, supplies|
      if supplies.include?("BBQ")
        x << holiday
      end
    end
  end
  x
end
