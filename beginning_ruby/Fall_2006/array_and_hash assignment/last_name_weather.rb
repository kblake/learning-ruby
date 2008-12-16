require 'rubygems'

#must install first
#gem install xml-simple
require 'xmlsimple'  

#read in xml and convert it to a hash
weather_hash = XmlSimple.xml_in 'weather_forcast.xml', 'ForceArray' => false
#p weather_hash

high_temp_hash = weather_hash['high_temps']
p high_temp_hash

puts

low_temp_hash = weather_hash['low_temps']
p low_temp_hash
