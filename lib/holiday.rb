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
  holiday_hash[:winter][:christmas] = ["Lights", "Wreath", "Balloons"]
  holiday_hash[:winter][:new_years] = ["Party Hats", "Balloons"]
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

    holiday_hash.each do |key, value|
      #key is season, value is holiday
      value.each do |key2, value2|
        #key 2 is the holiday, value2 is the array lists
        if key2 == :memorial_day
          value2 << supply
        end
      end
    end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.each do |season2, holiday|
    if season2 == season
      holiday[holiday_name] = supply_array
    end
  end


end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  winter_supplies = []
  holiday_hash.each do |season, data|
    if season == :winter
      data.each do |holiday, supplies|
        winter_supplies.concat(supplies)
      end
    end
  end
  winter_supplies
end
 def all_supplies_in_holidays(holiday_hash)

  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, data|
    puts "#{season.to_s.capitalize}:"
    data.each do |holiday, supplies|
        message = "  "
        holiday_words = holiday.to_s.split("_")
        message << format_words_in_array(holiday_words)
        message << ": "
        supplies.each do |supply|
          if supply.downcase == "bbq"
            message << supply.upcase
          else
            message << format_words_in_array(supply.split(" "))
            message << ", " if supplies.index(supply) != supplies.size - 1
          end
        end
        puts message
    end
  end
end
 def format_words_in_array(words)
  words.collect! do |word|
    "#{word.capitalize}"
  end.join(" ")
end
 def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
   holidays_with_bbq = []
  holiday_hash.each do |season, data|
    data.each do |holiday, supplies|
         if supplies.include?("Bbq") || supplies.include?("bbq") || supplies.include?("BBQ")
           holidays_with_bbq << holiday
         end
    end
  end
   holidays_with_bbq
end
