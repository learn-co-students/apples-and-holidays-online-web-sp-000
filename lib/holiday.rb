require 'pry'

#holiday_hash = 
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
  
def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :winter
      holiday.each do |attribute, data|
        data << supply
      end
    end
  end
return holiday_hash
end

def add_supply_to_memorial_day(holiday_hash, supply)
  holiday_hash.each do |season, holiday|
    if season == :spring
      holiday.each do |attribute, data|
        if attribute == :memorial_day
        data << supply
        end
      end
    end
  end
return holiday_hash
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_hash[season][holiday_name] = supply_array
  return holiday_hash
end

def all_winter_holiday_supplies(holiday_hash)
  holiday_hash [:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, season_holidays_hash|
    puts "#{season.to_s.split('_').map(&:capitalize).join('')}:" 
    season_holidays_hash.each do |attribute, data|
      puts "  #{attribute.to_s.split('_').map(&:capitalize).join(' ')}: #{data.join(", ")}" 
      end
    end
end

def all_holidays_with_bbq(holiday_hash)
  holidays_with_barbecue = []
  holiday_hash.each do |season, season_holidays_hash|
	  season_holidays_hash.each do |attribute, data|
		  if data.include?("BBQ") 
			  holidays_with_barbecue << attribute
			end
		end
	end	
  return holidays_with_barbecue
end