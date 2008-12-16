continue = "y"
while continue == "y"
  puts "Enter year and I'll tell you music type: "
  year = gets.chomp.to_i
  music_type = case year
                  when 1850..1889: "Blues"
                  when 1890..1909: "Ragtime"
                  when 1910..1929: "New Orleans Jazz"
                  when 1930..1939: "Swing"
                  when 1940..1950: "Bebop"
                  else              "Jazz"
              end
  puts "Music type from year #{year} is #{music_type}"
  puts "Enter another (y/n)?"
  continue = gets.chomp
end