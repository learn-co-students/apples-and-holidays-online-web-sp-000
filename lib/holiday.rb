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


  holiday_hash.each {|season, holiday|
    if season == :summer
      holiday_hash[season].each {|day, activity|
      if day == :fourth_of_july
        n = 0
        holiday_hash[season][day].each {|event|
          if n == 1
            return event
          end
            n = n + 1
          }
        end
      }
    end
  }



end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays

  holiday_hash.each {|season, holiday|
    if season == :winter
      holiday_hash[season].each {|day, supply|
        holiday_hash[season][day] << "Balloons"
      }
    end
  }

end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array

  holiday_hash.each {|season, day|
    if season == :spring
      holiday_hash[season].each{|date, activity|
        if date == :memorial_day
          holiday_hash[season][date] << supply
        end
        }
    end
  }
end


def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash

  holiday_hash[season][holiday_name] = supply_array

end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  array = []
  holiday_hash[:winter].each {|key, value|
    array << value
  }
  array.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  holiday_hash.each {|season, holidays|
    puts "#{season[0].upcase+season[1..-1]}:"
    holiday_hash[season].each {|day, items|
      s = ""
      items.each_with_index {|item, index|
        s = s + item
        if index + 1 < items.length
          s = s + ", "
        end
    }
    string2 = day[1..-1].gsub(/_[a-z]/, &:upcase)
    string2 = string2.gsub("_", " ")
      puts "  #{day[0].upcase+string2}: #{s}"


    }
  }

end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  array1 = []
  holiday_hash.each {|season, holiday|
    holiday_hash[season].each {|day, supply|
      if supply.include?("BBQ")
          array1 << day
        end
    }
  }

  array1

end
