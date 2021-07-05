require 'pry'
def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holiday|
    puts season.to_s.capitalize + ":"
    holiday.each do |holiday, supplies|
      hol = holiday.to_s.split('_')
      hol.each do |str|
        str.capitalize!
      end
      puts "\t#{hol.join(" ")}: #{supplies.join(', ')}"
      
    end
  end

end


holiday_hash = {
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
all_supplies_in_holidays(holiday_hash)