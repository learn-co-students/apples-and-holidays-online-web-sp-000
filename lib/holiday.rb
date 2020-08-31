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
  holiday_supplies[:summer][:fourth_of_july][1]
  # return the second element in the 4th of July array
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash[:winter].each {|k,v| v.push(supply)}
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day] << supply
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
end


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = [supply_array].flatten
  holiday_hash
  # code here
  # remember to return the updated hash
end

def all_winter_holiday_supplies(holiday_hash)
  winter_arr = []
  holiday_hash[:winter].each do |k,v|
    v.collect {|itm| winter_arr << itm}
  end
  return winter_arr
  # return an array of all of the supplies that are used in the winter season
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |k,v|
    puts "#{k.capitalize}:"
      v.each do |k,v|
       puts "  #{k.to_s.split("_").map {|itm| itm.capitalize}.join(' ')}: #{v.join(", ")}"
      end    
  end
end

def all_holidays_with_bbq(holiday_hash)
  holiday_arr = []
  holiday_hash.each do |k,v|
    v.each do |holiday,items|
      binding.pry
      items.each do |idx|
        if idx == "BBQ"  
          holiday_arr << holiday
        end 
      end
    end
  end
  holiday_arr
end

all_holidays_with_bbq(holiday_hash)

# return an array of holiday names (as symbols) where supply lists
# include the string "BBQ"




