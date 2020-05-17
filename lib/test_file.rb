require 'pry'

test_data = 
{
    :winter => {
      :christmas_one => ["Lights", "Wreath"],
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

  def all_holidays_with_bbq(holiday_hash)
    # return an array of holiday names (as symbols) where supply lists
    # include the string "BBQ"
    holiday_hash.each do |season, holiday|
        holiday.collect do |name, array|
            array.collect do |value, supplies|
                holiday if supplies.include?("BBQ")
            end
        end
    end
  end

all_holidays_with_bbq(test_data)