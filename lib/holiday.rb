require "pry"

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_hash[:summer][:fourth_of_july][1]
end


def add_supply_to_winter_holidays(holiday_hash, supply)
   holiday_hash[:winter].each {|k, v| holiday_hash[:winter][k] << supply }
 end
 
 
 
 def add_supply_to_memorial_day(holiday_hash, supply)
   holiday_hash[:spring][:memorial_day] << supply
 end
 
 
 def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
   holiday_hash[season][holiday_name] = supply_array
 end
 
 
 
 def all_winter_holiday_supplies(holiday_hash)
holiday_supplies.each do |season, holidays|
    seasons = season.to_s
    puts "#{seasons.capitalize!}:"
    holidays.each do |holiday, supplies|
      split_holiday = holiday.to_s.split("_").collect do |word|
        words = word.capitalize!
      end.join(" ")

      puts "  #{split_holiday}: #{supplies.join(", ")}" 
    end 
  end
end
end




def all_holidays_with_bbq(holiday_hash)
holidays_with_BBQ = []
  holiday_supplies.collect do |season, holidays|

    holidays.collect do |holiday, supplies|
      if supplies.include?("BBQ")
         holidays_with_BBQ << holiday 
      end
    end

  end
  holidays_with_BBQ.uniq
end





































