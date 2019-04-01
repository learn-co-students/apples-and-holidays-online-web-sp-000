require 'pry'
holiday={

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


holiday.each do |season,holiday_details|
  puts season.to_s.capitalize":"
  holiday_details.each do |holiday_name,supplies|
    puts holiday_name.to_s.capitalize!+": "+supplies.to_s
    binding.pry
  end
end
