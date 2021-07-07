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

    holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

    holiday_hash.each do |holiday, season|
    if holiday == :winter
      season.each do |attribute, data|
        if attribute == :christmas || :new_years
          data << supply
        end
      end
    end
  end

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
    holiday_hash.each do |holiday, season|
    if holiday == :spring
      season.each do |attribute, data|
        if attribute == :memorial_day
          data << supply
        end
      end
    end
  end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  # holiday_hash[season]
  # holiday_hash[season][holiday_name]
  # holiday_hash[season][holiday_name][supply_array]
  holiday_hash[season] = {holiday_name => supply_array}
  #binding.pry
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_supplies = []
    holiday_hash.each do |holiday, season|
    if holiday == :winter
      season.each do |attribute, data|
        if attribute == :christmas || :new_years
          holiday_supplies << data
        end
      end
    end
  end
  holiday_supplies.join
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
    # holiday_hash.each do |season, holiday|
    #   season.to_s
    #   puts "#{season}:".capitalize!
    #   holiday.each do |holiday_name, supplies|
    #     holiday_name.to_s.split("_").to_a
    #       holiday_name.each do |words|
    #         words.capitalize!
    #         words.join(" ")
    #         puts "#{words}"
    #       end
    #       supplies.join().capitalize!
    #       puts "#{supplies}"
    #
    #     end
    #   end

  holiday_hash.each do |season, holiday|
   season_string = season.to_s
   season_string[0] = season_string[0].capitalize
   puts "#{season_string}:"

   holiday.each do |name, items|
     names_string = name.to_s
     #names_s[0] = names_s[0].capitalize
     names_string_array = names_string.split("_")

     names_string_array.collect do |value|
       value[0] = value[0].capitalize
     end

     names_string = names_string_array.join(" ")

     item_string = ""
     items.each_with_index do |item, index|
       if index == (items.length - 1)
         item_string += "#{item}"
       else
         item_string += "#{item}, "
       end
     end
     puts "  #{names_string}: #{item_string}"
   end
 end

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  holiday_supplies = []
    holiday_hash.each do |season, holiday|
      holiday.each do |holiday_name, supplies|
         supplies.each do |items|
          if items == "BBQ"
            holiday_supplies << holiday_name
        end
      end
    end
  end
    holiday_supplies
end
