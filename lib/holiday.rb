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
  holiday_hash.each {|a, b|
  b.each {|c, d| return d[1] if c == :fourth_of_july}}
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash.each {|a, b|
  b.each {|c, d| d << supply if c == :christmas || :new_years}}
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash.each {|a, b|
  b.each {|c, d| d << supply if c == :memorial_day}}
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash.each_key {|a| holiday_hash[season][holiday_name] = supply_array if a == season}
  end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash.each {|a, b| return b.values.flatten if a == :winter}
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

arr = []
arrb = []
arrc = []
arrd = []
holiday_hash.each {|a,b| arr << (a.to_s.capitalize+":")}
holiday_hash.each {|a,b| b.each {|c,d| arrb << c.to_s.split("_")}}
holiday_hash.each {|a,b| b.each {|c,d| arrd << d}}
arrb.each {|x| x.each {|y| y.capitalize!}}
arrb.each {|x| arrc << x.join(" ")}
i = 0
num = 5
while i < num  do

  if i == 0
   puts"#{arr[i]}"
   puts"  #{arrc[i]}: #{arrd[i].join(', ')}"
   puts"  #{arrc[i+1]}: #{arrd[i+1].join(', ')}"
 elsif i < arr.length
  puts"#{arr[i]}"
  puts"  #{arrc[i+1]}: #{arrd[i+1].join(', ')}"
 end
 i += 1
end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  arr = []
  holiday_hash.each {|a,b|
  b.each {|c,d| arr << c if d.include?("BBQ")}}
  arr
end
