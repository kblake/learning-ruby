#uses file_utilities.rb
require 'file_utilities'

products = get_products  #array of products
print_products(products)
puts
#do a bunch of CRUD
#~ products << "667 pants 23.99"

#~ save_products(products)
#~ print_products(get_products)
web_report(products)