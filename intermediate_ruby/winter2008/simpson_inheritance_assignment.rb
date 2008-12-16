
class ElectronicDevice
  attr_accessor :name, :price, :description
  def initialize(options={})
    @category = options[:category] || ""
    @name = options[:name] || ""
    @price = options[:price] || ""
    @description = options[:description] || ""
    @on_sale = options[:on_sale] || ""
  end
  def on_sale
    if @on_sale == true
      new_price = @price.to_f - ((@price.to_f*10)/100)
      "On Sale? Yes\nSale Price: $#{sprintf("%.2f", new_price)}"
      else
        "On Sale? No"
        end
  end
  def to_s
    "Category: #{@category}\nName: #{@name}\nDescription: #{@description}\nPrice: $#{@price}\n#{on_sale}"
  end
end

class Television < ElectronicDevice
  attr_accessor :type, :size
  def initialize(options={})
    super(options)
    @type = options[:type] || ""
    @size = options[:size] || ""
  end
  def to_s
    super + "\nType: #{@type}\nSize: #{@size} inch"
  end
end

class Mp3_player < ElectronicDevice
    attr_accessor :mp3_storage, :mp3_color_screen
    def initialize(options={})
    super(options)
    @mp3_storage = options[:mp3_storage] || ""
    @mp3_color_screen = options[:mp3_color_screen] 
    end 
    def mp3_description
      if !@mp3_storage.empty?
        "\nMP3 Storage: #{@mp3_storage}\nMP3 has color? " + (@mp3_color_screen ? "Yes" : "No")
      else
        ""
      end
    end
  def to_s
    super + "#{mp3_description}"
  end  
end

class DigitalCamera < ElectronicDevice
  attr_accessor :megapixels, :zoom
  def initialize(options={})
    super(options)
    @megapixels = options[:megapixels] || ""
    @zoom = options[:zoom] || ""
  end
    def megapixels_description
    @megapixels == 0 ? "" : "\nMegapixels: #{@megapixels}"
  end
  def zoom_range
    @zoom == 0 ? "" : "\nZoom Range: #{@zoom}"
  end
  def to_s
    super + "#{megapixels_description} #{zoom_range}"
  end
end

class Computer < ElectronicDevice
  attr_accessor :model, :ram, :monitor_size
  def initialize(options={})
    super(options)
    @model = options[:model] || ""
    @ram = options[:ram] || ""
    @monitor_size = options[:monitor_size] || ""
  end
  
  def monitor_description
      if monitor_size.empty?
        "\nMonitor not included"
        else
          "\nMonitor: #{monitor_size}"
        end
  end
  
  def to_s
    super + "\nModel: #{model}\nMemory: #{ram} #{monitor_description}"
  end
  end
  


tv = Television.new(:category=>"Televisions",:name=>"TV",:price=>"699.99",:description=>"Big, flat, and sweet!",:on_sale=>true,:type=>"HD",:size=>"52")
puts tv
puts
puts "-----------"
ipod = Mp3_player.new(:category=>"MP3 Players",:name=>"IPOD",:price=>"299.99",:description=>"Watch video, listen to music",:on_sale=>true, :mp3_storage=>"40 GB",:mp3_color_screen=>true)
puts ipod
puts
puts "-----------"
cam = DigitalCamera.new(:category=>"Digital Cameras",:name=>"Sony Alpha DSLR-A700", :price=>"1399.99",:description=>"Express your creativity and shoot like a pro.",:on_sale=>true, :megapixels =>"12.2", :zoom=>"12x")
puts cam
puts "-----------"
puts
dell = Computer.new(:category=>"Computers",:name=>"Dell XPS 1000",:price=>"2999.00",:description=>"The ultimate gaming PC", :onsale=>false,:model=>"Tower",:ram=>"5Gb",:monitor_size=>"")
puts dell
puts "-----------"
puts
lappy = Computer.new(:category=>"Computers",:name=>"Toshiba Satellite Pro A210-EZ2201",:price=>"699.00",:description=>"SweetDeal", :onsale=>true,:model=>"Laptop",:ram=>"1Gb",:monitor_size=>"15.4inch")
puts lappy






