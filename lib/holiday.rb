require 'pry'
require 'pp'
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
  the_fourth = holiday_hash[:summer][:fourth_of_july]
    the_fourth[1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # add the second argument, which is a supply, to BOTH the
    
    winter = holiday_hash[:winter][:christmas] 
   new_yer = holiday_hash[:winter][:new_years]
   winter << supply
   new_yer << supply
    
  # Christmas AND the New Year's arrays

end

def add_supply_to_memorial_day(holiday_hash, supply)
  add_on = holiday_hash[:spring][:memorial_day]
  add_on << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
      holiday_hash[season].store(holiday_name, supply_array)
      holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
    display_one = holiday_hash[:winter].values
      display_one.join
end

def all_supplies_in_holidays(holiday_hash)
  num = 0

  holiday_hash.map do |key, value| 
      n_key = key.to_s.capitalize
       puts "#{n_key}:"
       
       value.each do |nest_key, element| 
        num = num + 1
        updated = nest_key.to_s.split("_")
          holiday_name = updated.map { |to_cap| to_cap.capitalize }.join(" ")
    # is_there = nest_key.find_index("_")
             
           puts "  #{holiday_name}: #{element.join(", ")}"
        end
        end 
  end

#:summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
#:spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  
def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  store = []
    holiday_hash.each do |key, value| 
        value.each do |search, the_value|
            the_value.each do |elements|
                if elements == "BBQ"
                  store.push(search)
                end
            end
        end
    end
    store
end







