require 'rubygems'
require 'xmlsimple'  

#read in xml and convert it to a hash
weather_hash = XmlSimple.xml_in 'weather_forcast.xml', 'ForceArray' => false
high_temp_hash = weather_hash['high_temps']
sum = 0
high_temp = -99
high_day = ''
high_temp_hash.each do |key,value|
	value = value.to_i
	sum += value
	if value > high_temp
		high_temp = value
		high_day = key
	end
end
puts "The hottest temperature of the week happend on #{high_day} at #{high_temp} degrees"
puts "Average high temperature is #{sum/high_temp_hash.size}"



sum = 0
low_temp = 200
low_day = ''
low_temp_hash = weather_hash['low_temps']
low_temp_hash.each do |key,value|
	value = value.to_i
	sum += value
	if value < low_temp
		low_temp = value
		low_day = key
	end
end
puts "The coldest temperature of the week happend on #{low_day} at #{low_temp} degrees"
puts "Average low temperature is #{sum/low_temp_hash.size}"