holiday_supplies = {
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

# holiday_supplies.each do |season, holiday|
#   puts season.to_s.capitalize!
#   holiday.each do |day, supply|
#     dayArray = []
#     day.to_s.split("_").each do |i|
#       dayArray.push(i.capitalize!)
#     end
#     capDay = dayArray.join(" ")
#     puts "  #{capDay}: #{supply.join(", ")}"
#   end
# end


# sample = "new_years".split("_")

# dayArray = []
# sample.each do |i|
#   dayArray.push(i.capitalize!)
# end
# puts dayArray.join(" ")

# sampleArray = ["Lights", "Wreath"]
# print sampleArray.join(" ")

holidayArray = []
holiday_supplies.each do |season, holidayHash|
  holidayHash.each do |holiday, supply|
    if supply.include?("BBQ")
      holidayArray.push(holiday)
    end
  end
end
return holidayArray
