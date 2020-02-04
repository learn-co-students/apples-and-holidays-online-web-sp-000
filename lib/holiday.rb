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
holiday_hash[:winter][:christmas][2] = supply
holiday_hash[:winter][:new_years][1] = supply
holiday_hash
end


def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash[:spring][:memorial_day][1] = supply
  holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  holiday_hash

end

def all_winter_holiday_supplies(holiday_hash)
  winter_item_array = []
  holiday_hash[:winter].each do |holiday, items|
    items.each do |item|
      winter_item_array << item
    end
  end
  winter_item_array
end


# this also worked but didn't pass the test because it technically didn't puts out line by line
# I got it to work using a variety of print vs. puts but the test didn't like that so I made a new method
# This one also works for any size holiday_hash
# Whereas the one I made to pass the test only works if there are 2 or fewer items

# def all_supplies_in_holidays(holiday_hash)
#   holiday_hash.each do |season, holidays|
#   puts season.to_s.capitalize! + ":"
#     holidays.each do |holiday, items|
#       split_holidays = holiday.to_s.split("_")
#       split_holidays.each do |hol_word|
#         hol_word.capitalize!
#       end
#       print "  " + split_holidays.join(" ") + ":"
#       items.each_with_index do |item, index|
#         if items.length == 1
#           puts " " + item
#         elsif items.length > 1
#           if index == items.length - 1
#             puts " " + item
#           else
#             print " " + item + ","
#           end
#         end
#       end
#     end
#   end
# end


def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
  puts season.to_s.capitalize! + ":"
    holidays.each do |holiday, items|
      split_holidays = holiday.to_s.split("_")
      split_holidays.each do |hol_word|
        hol_word.capitalize!
      end
        if items.length == 1
          puts "  " + split_holidays.join(" ") + ": " + items[0]
        elsif items.length > 1
          puts "  " + split_holidays.join(" ") + ": " + items[0] + ", " + items[1]
      end
    end
  end
end


def all_holidays_with_bbq(holiday_hash)
bbq_days = []
  holiday_hash.each do |season, holidays|
    holidays.each do |holiday, items|
      items.each do |item|
        if item == "BBQ"
          bbq_days << holiday
        end
      end
    end
  end
  bbq_days
end







