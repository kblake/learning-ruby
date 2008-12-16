#############################
#first iteration of product
#############################
class ElectronicDevice
  attr_accessor :name, :price, :description
  def initialize(options={})
    @name = options[:name] || ""
    @price = options[:price] || ""
    @description = options[:description] || ""
  end
  def to_s
    "Name: #{@name}\nDescription: #{@description}\nPrice: $#{@price}"
  end
end
television = ElectronicDevice.new(:name=>"TV",:price=>"699.99",:description=>"Big, flat, and sweet!")
puts television

############################################################################
# 2nd Iteration: Manager asked to allow product to encompass an mp3 player
############################################################################
class ElectronicDevice
  attr_accessor :name, :price, :description, :mp3_storage, :mp3_color_screen
  def initialize(options={})
    @name = options[:name] || ""
    @price = options[:price] || ""
    @description = options[:description] || ""
    @mp3_storage = options[:mp3_storage] || ""
    @mp3_color_screen = options[:mp3_color_screen] || false
  end
  def mp3_description
    if !@mp3_storage.empty?
      "MP3 Storage: #{@mp3_storage}\nMP3 has color? " + (@mp3_color_screen ? "Yes" : "No")
    else
      ""
    end
  end
  def to_s
    "Name: #{@name}\nDescription: #{@description}\nPrice: $#{@price}\n#{mp3_description}"
  end
end
television = ElectronicDevice.new(:name=>"TV",:price=>"699.99",:description=>"Big, flat, and sweet!")
mp3_player = ElectronicDevice.new(:name=>"IPOD",:price=>"299.99",:description=>"Watch video, listen to music", :mp3_storage=>"40 GB",:mp3_color_screen=>true)
puts television
puts mp3_player

############################################################################
# 3rd Iteration: Manager asks you to add another type device: digital camera
############################################################################
class ElectronicDevice
  attr_accessor :name, :price, :description, :mp3_storage, :mp3_color_screen,:megapixels
  def initialize(options={})
    @name = options[:name] || ""
    @price = options[:price] || ""
    @description = options[:description] || ""
    @mp3_storage = options[:mp3_storage] || ""
    @mp3_color_screen = options[:mp3_color_screen] || false
    @megapixels = options[:megapixels] || 0
  end
  def mp3_description
    if !@mp3_storage.empty?
      "\nMP3 Storage: #{@mp3_storage}\nMP3 has color? " + (@mp3_color_screen ? "Yes" : "No")
    else
      ""
    end
  end
  def megapixels_description
    @megapixels == 0 ? "" : "\nMegapixels: #{@megapixels}"
  end
  def to_s
    "Name: #{@name}\nDescription: #{@description}\nPrice: $#{@price}#{mp3_description}#{megapixels_description}"
  end
end
television = ElectronicDevice.new(:name=>"TV",:price=>"699.99",:description=>"Big, flat, and sweet!")
mp3_player = ElectronicDevice.new(:name=>"IPOD",:price=>"299.99",:description=>"Watch video, listen to music", :mp3_storage=>"40 GB",:mp3_color_screen=>true)
digital_camera = ElectronicDevice.new(:name => "Sony Alpha DSLR-A700", :price => "1399.99",:description => "Express your creativity and shoot like a pro. The Sony α (alpha) DSLR-A700 is the perfect DSLR for serious amateurs.",:megapixels => "12.2")
puts television
puts mp3_player
puts digital_camera
