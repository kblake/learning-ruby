require 'rubygems'
require 'xmlsimple'  

#read in xml and convert it to a hash
weather_hash = XmlSimple.xml_in 'weather_forcast.xml', 'ForceArray' => false
high_temp_hash = weather_hash['high_temps']

#get values array, use 'collect' method to convert string temps to integer temps
high_temps_array = high_temp_hash.values.collect {|temp| temp.to_i}

#get max value out of temps array
high_temp = high_temps_array.max

#invert the hash so I can use the temp as the key to get the correct day out of the hash
inverted_high_temps = high_temp_hash.invert
high_temp_day = inverted_high_temps[high_temp.to_s]
puts "#{high_temp_day.capitalize} had the highest temperature of #{high_temp} degrees"

#use the inject method to get a total of the degree values then divide by the length of the array
average = high_temps_array.inject{|sum,element| sum + element}/high_temps_array.length
puts "Average high temp is #{average}"


#do the same with low temperatures
low_temp_hash = weather_hash['low_temps']
low_temps_array = low_temp_hash.values.collect {|temp| temp.to_i}
low_temp = low_temps_array.min
inverted_low_temps = low_temp_hash.invert
low_temp_day = inverted_low_temps[low_temp.to_s]
puts "#{low_temp_day.capitalize} had the lowest temperature of #{low_temp} degrees"
average = low_temps_array.inject{|sum,element| sum + element}/low_temps_array.length
puts "Average low temp is #{average}"
