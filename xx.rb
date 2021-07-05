require 'pry'

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  holiday_supplies.map do |seasons, holidays|
   if seasons == :fall
       run = [holiday_name] = supply_array
       binding.pry
       end
     end

end
