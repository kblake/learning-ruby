require 'rubygems'

#must install first
#gem install xml-simple
require 'xmlsimple'  

#read in xml and convert it to a hash
grades = XmlSimple.xml_in 'grades.xml', 'ForceArray' => false
p grades
scores = grades['grades']
p scores




