require 'watir'

def get_products
  line_array = []
  IO.foreach("products.txt") do|line| 
    line_array << line.chomp
  end
  line_array
end

def print_products(products)
  products.each {|product| puts product}
end

def save_products(products)
  output = products.join("\n")
  open("products.txt","w") do |file|
    file.write(output)
  end
end

def write_web_page(html)
   open("c:\\products.html","w") {|file| file.write(html) }
end
 
def open_web_page
  ie = Watir::IE.new
  ie.goto("c:\\products.html")
end

def web_report(products)
  html = "<html><body><ul>"
  products.each { |product| html << "<li>#{product}</li>"}
  html << "</ul></body></html>"
  write_web_page(html)
  open_web_page
end
















