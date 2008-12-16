require 'rubygems'
require 'highline/import'

input_array = []
say "Enter some strings and I'll sort them.  Press 'Enter' key to stop"
begin
  input = ask "Enter string: "
  input_array << input if(input.length > 0)
end while input.length > 0
input_array.sort!
say "Sorted strings"
say input_array.join("\n")

gets