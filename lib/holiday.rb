require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)

   {
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
   return holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)

  holiday_hash.each do |season, holiday|
    holiday_hash[season].each do |holiday, object|
      object << "Balloons"
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)

  return holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  return holiday_hash[season] = {holiday_name => supply_array}

end

def all_winter_holiday_supplies(holiday_hash)
  array = []
  holiday_hash[:winter].each do |holiday, objects|
    objects.each do |object|
      array << object
    end
  end
  array

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holidays| #holidays is a dictionary
    s = season.to_s.capitalize!
    puts "#{s}:"
    holidays.each do |holiday, objects|
      holiday = holiday.to_s.split("_")
      if holiday.length() > 1
        holiday.each do |word|
          word = word.capitalize!
        end
        h = holiday.join(" ")
      else
        h = holiday[0].capitalize!
      end

        if objects.length() > 1
          objects = objects.join(", ")
        else
          objects = objects[0]
        end
        puts  "  #{h}: #{objects}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  festive_bbq = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, objects|

      objects.each do |object|
        if object == "BBQ"
          festive_bbq << holiday
        end
      end

    end
  end
  festive_bbq
end
