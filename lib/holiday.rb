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
  return holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each do |season, hash_holiday|
    if season == :winter
      hash_holiday.each do |celebration, supplies|
        supplies << "Balloons"
      end
    end
  end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day][-1] = supply
end


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season].merge!(holiday_name => supply_array)
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  return holiday_hash[:winter].values.flatten

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.collect do |season, holiday|
    season = season.to_s.capitalize!
    puts "#{season}:"
    holiday.each do |celebration, supplies|
      #making the supplies into a string
      supplies = supplies.join(", ")
      if celebration == :new_years || celebration == :fourth_of_july || celebration == :memorial_day
        word_split = celebration.to_s.split("_")
        word_split.collect {|word| word.capitalize!}
        holiday = word_split.join(" ")
        puts "  #{holiday}: #{supplies}"
      else
        holiday = celebration.capitalize
        puts "  #{holiday}: #{supplies}"
      end
    end   
  end
end


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq = [ ]
  holiday_hash.collect do |season, holidays|
    holidays.each do |celebration, supplies|
        if supplies.include? "BBQ"
          #first converting the holidays that have BBQ to a string and then adding to an array
          bbq << celebration.to_s
        end
    end
  end
  #need to convert the holiday strings back to symbols
  bbq_symbols = [ ]
  bbq.each {|holiday| bbq_symbols.push(holiday.to_sym)}
  return bbq_symbols

end







