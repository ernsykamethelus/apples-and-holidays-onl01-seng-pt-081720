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
   holiday_hash[:winter].values.flatten
end




def all_supplies_in_holidays(holiday_hash)
  holiday_hash.each do |season, holidays|
    puts "#{season.to_s.capitalize}:"

    holidays.each do |holiday, supplies|
      puts "  #{holiday.to_s.split("_").collect{|w| w.capitalize}.join(" ")}: #{supplies.join(", ")}"
    end
  end
end


def all_holidays_with_bbq(holiday_hash)
results = []


  holiday_hash.collect{ |season, holidays|
    holidays.select{ |holiday, supplies|
      supplies.include?("BBQ")
    }.keys
  }.flatten
end





































