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
  holiday_hash[:winter].each do |holiday, value|

# binding.pry
    value << supply
# binding.pry
      # << supply

end
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring].each do |holiday, stuff|
  stuff << supply
end
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season]
  holiday_hash[season] = holiday_name
  # binding.pry
  holiday_hash[season] = { holiday_name => supply_array }

end

def all_winter_holiday_supplies(holiday_hash)
  array = []
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].each do |holiday, supply|
  array.push(supply)
end

  # array_two = array.split(',')
  # array_two
a = array[0]
a.to_s
b = array[1]
b.to_s
array_two = []

array_two  << a[1]
array_two << a[0]
array_two << b[0]
array.shift
a = array[0]
array_two

end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
    i = 0

 # seperate double word holidays from single word
holiday_hash.each do |season, day|
# capatilize the season

  season = season.to_s
  season.capitalize!
  puts season + ":"
    day.each do |holiday, value|
 # make holiday symbol name a string
 holiday = holiday.to_s

  if holiday =~ (/\_/)
    # split if holiday name has _
    holiday =  holiday.split(/\_/)

# Capitalize all the words in string
# join split with a space
  holiday.map do |hol|
    hol.capitalize!
    # holiday[0] = holiday[0] + " "
    # if i != 0
    #   holiday[0].concat(hol)
    # end
    # i += 1
  end
  holiday = holiday.join(" ")

else
    # make sungle word holiday capitalized
    holiday.capitalize!
end




  # start of supply lists

  # iterate through array of values
  # if value[0][1]
    # value.flatten
  j = 0
  # value.collect do |sing|
  #
  #
  #   #Takes array and merges elements, then pops extra array element
  #   if j != 0
  #     value[0] = value[0] + ", "
  #     value[0].concat(sing)
  #     value.pop()
  #     value[0].to_s
  #   end
  value = value.join(", ")
    j += 1
  
value[0].to_s
    puts "  " + holiday + ": " + value
# binding.pry

end
end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  array = []
  holiday_hash.each do |season, value|
    value.collect do |holiday, supply|
      supply.collect do |index|
  if index == "BBQ"
    array << holiday
  end

  end
  # binding.pry
  end
end
array
end
