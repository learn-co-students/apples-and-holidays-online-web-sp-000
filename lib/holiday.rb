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
    holiday_hash.each do |season, holiday|
      if season == :winter 
        holiday.each do |date, stuff|
          if date == :christmas || :new_years
            stuff << supply
          end
        end
      end
    end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday.each do|date, stuff|
        stuff << supply
        stuff << "Burgers"
        stuff
      end 
    end
    end  
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
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
  holiday_hash.each do |season, season_data|
    puts "#{season.to_s.capitalize}:"
    season_data.each do |holiday, supply|
      holiday_array = holiday.to_s.split("_")
      new_holiday_array = []
      holiday_array.each do |holiday|
        new_holiday_array << holiday.capitalize!
      end
      holiday = new_holiday_array.join(" ")
      supply = supply.join(", ")
      puts "  #{holiday}: #{supply}"  
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  final_array = []
  holiday_hash.each do |season, season_data|
    season_data.each do |holiday, supply_array|
      supply_array.each do |supply|
        if supply == 'BBQ'
          final_array.push(holiday)
        end
      end
    end
  end
  final_array
end







