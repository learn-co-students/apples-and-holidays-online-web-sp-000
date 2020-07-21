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
  holiday_hash.each do | season, contents |
    if (season == :winter)
      holiday_hash[season].each do | holiday, supplyList |
        supplyList << supply
      end
    end
  end
  return holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each do | season, contents |
    if (season == :spring)
      holiday_hash[season].each do | holiday, supplies |
        if (holiday == :memorial_day)
          supplies << supply
        end
      end
    end
  end
  return holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_supplies.each do | seasonSelected, contents |
    if (seasonSelected == season)
      holiday_hash[seasonSelected][holiday_name] = supply_array
    end
  end
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  rArray = []
  holiday_hash.each do | season, contents |
    if (season == :winter)
      holiday_hash[season].each do | holiday, suppliesList |
        suppliesList.each do | individualSupply |
          rArray << individualSupply
        end
      end
    end
  end
  return rArray
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do | season , holidayList |
    seasonName = season.to_s
    seasonName = seasonName.capitalize
    puts "#{seasonName}:"
    holiday_hash[season].each do | holidayName , supplyList |
      nextPut = ""
      holidayNameStr = holidayName.to_s
      holidayNameStr = holidayNameStr.capitalize
      if (holidayNameStr.include?("_"))
        nextPut += "  "
        holidayNameArray = holidayNameStr.split("_")
        maxHDNindex = holidayNameArray.length - 1
        i = 0
        holidayNameArray.each do | word |
          word = word.capitalize
          nextPut += word
          if (i != maxHDNindex)
            nextPut += " "
          else
            nextPut += ": "
          end
          i = i + 1
        end
      else
        nextPut += "  #{holidayNameStr}: "
      end
      maxSupplyIndex = supplyList.length - 1
      i = 0
      supplyList.each do | supply |
        supplyName = supply.to_s
        supplyName = supplyName.capitalize
        nextPut += "#{supply}"
        if (i < maxSupplyIndex)
          nextPut += ", "
        end
        i = i + 1
      end
      puts nextPut
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  rArray =[]
  holiday_hash.each do | season , holidayList |
    i = 0
    holiday_hash[season].each do | holiday , supplyList |
      passer = supplyList.any? do | supply |
        supply == "BBQ"
      end
      if (passer)
        holidayArray = holiday_hash[season].keys
        #return holidayArray[i]
        rArray << holidayArray[i]
      end
      i = i + 1
    end
  end
return rArray
end
