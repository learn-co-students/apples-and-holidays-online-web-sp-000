require 'pry'

def holiday_hash =
  {
    :winter => {
       :christmas => ["Lights", "Wreath"],
       :new_years => ["Party Hats"]
     },
     :summer => {
       :fourth_of_july => ["Fireworks", "BBQ"]
     },
     :fall => {
       :thanksgiving => ["Turkey"]
     },
     :spring => {
       :memorial_day => ["BBQ"]
     }
  }
  
def all_supplies_in_holidays(holiday_hash)
  
  holiday_hash.each do |season, holiday_and_supplies|
    puts "#{season.capitalize}: "
    holiday_and_supplies.each do |holiday_name, supply_array|
      puts "#{holiday_name.to_s.split("_").map{|x| x.capitalize}.join(" ")}: #{supply_array.join(", ")}"
    end
  end 
end
 
  
  def all_holidays_with_bbq(holiday_hash)
    bbq_array = []
  holiday_hash. each do |season, holiday_and_supplies|
    holiday_and_supplies.each do |holiday_name, supply_array|
      if supply_array.include?("BBQ")
        bbq_array << holiday_name
      end 
    end 
  end 
  bbq_array
end

# REFACTOR THESE WITH MAP ---------------------------------------

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  all_winter =[]
  holiday_hash[:winter].each do |holiday_name, supply_array|
    all_winter << supply_array
  end
  all_winter.flatten
end

def all_winter_holiday_supplies_2(holiday_hash)
  holiday_hash[:winter].map do |holiday_name, supply_array|
    supply_array
  end 
  .flatten
end 


def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_array = []
  holiday_hash. each do |season, holiday_and_supplies|
    holiday_and_supplies.each do |holiday_name, supply_array|
      if supply_array.include?("BBQ")
        bbq_array << holiday_name
      end
    end
  end
  bbq_array
end

def all_holidays_with_bbq_2(holiday_hash)
  holiday_hash.map do |season, holiday_and_supplies|
    holiday_and_supplies.map do  |holiday_name, supply_array|
      if supply_array.include?("BBQ")
        holiday_name
      end 
    end
    
  end
  .flatten.compact
end 

all_holidays_with_bbq_2(holiday_hash)
  