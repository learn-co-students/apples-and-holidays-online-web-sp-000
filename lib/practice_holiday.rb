holiday_hash1 = {
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
   # iterate through holiday_hash and print items such that your readout resembles:
   # Winter:
   #   Christmas: Lights, Wreath
   #   New Years: Party Hats
   # Summer:
   #   Fourth Of July: Fireworks, BBQ
   # etc.
   holiday_hash.each do |season, event|
     puts "#{season.capitalize}:"

     event.each do |holiday, supplies|
       puts "  " + holiday.to_s.split("_").collect { |word| word.capitalize }.join(" ") + ": " + supplies.join(", ")
     end
   end
 end

all_supplies_in_holidays(holiday_hash1)
