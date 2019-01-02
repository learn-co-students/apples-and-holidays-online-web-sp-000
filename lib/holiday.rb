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
  
  winter_holidays = holiday_hash[:winter]
  winter_holidays.each do |holiday, holiday_array|
    holiday_array.push(supply)
  end
  holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day].push(supply)
  holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  
  holiday_hash[season][holiday_name] = supply_array
  # remember to return the updated hash
  holiday_hash
end

#def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
#  values_array = []
  #holiday_hash[:winter].each do |holiday, holiday_values|
#    values_array.concat(holiday_values)
#  end
#  values_array
#end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  
  holiday_hash[:winter].values.flatten
end

# def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  # holiday_hash.each do |season, holidays|
    # puts "#{season.capitalize}:"
    # holidays.each do |a_holiday, supplies|
    #  a_holiday = a_holiday.to_s
     # if a_holiday.include? "_"
       # a_holiday = a_holiday.split("_")
      #  temp_array = []
         # a_holiday.each do |temp_holi|
        #    temp_holi = temp_holi.capitalize
       #     temp_array = temp_array.push(temp_holi)
      #    end
     #   a_holiday = temp_array.join(" ")
    #  else
     #   a_holiday = a_holiday.capitalize
    #  end
    #  supplies_array = []
    #  supplies.each do |each_supply|
       # if each_supply.include? "_"
        #  each_supply = each_supply.split("_")
       #   each_supply = each_supply.join(" ")
       #   supplies_array.push(each_supply)
      #  else
        #  supplies_array.push(each_supply)
     #   end
    #  end
   #   puts "  #{a_holiday}: #{supplies_array.join(", ")}"
  #  end
 # end
  
#end


def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  
  holiday_hash.each do |season, holidays|
    puts "#{season.to_s.capitalize}:"
    holidays.each do |a_holiday, supplies|
      puts "  #{a_holiday.to_s.split("_").map {|word| word.capitalize }.join(" ") }: #{supplies.join(", ")}"
  end 
end
  
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  
  holiday_BBQs = []
  holiday_hash.each do |season, holiday|
    holiday.each do |d_holiday, supplies|
      if supplies.include?("BBQ")
        holiday_BBQs = holiday_BBQs.push(d_holiday)
      end
    end
  end
  
  holiday_BBQs
end

