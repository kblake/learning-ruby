require 'win32ole'


#~ ie = WIN32OLE.new('InternetExplorer.Application') 
#~ ie.visible = true 
#~ ie.gohome

#~ application = WIN32OLE.new('Excel.Application')
#~ application.visible = TRUE
#~ workbook = application.Workbooks.Add();
#~ worksheet = workbook.Worksheets(1);
#~ worksheet.Range('A1:D1').value = ['North','South','East','West'];

#~ ChartTypeVal = -4100; 
#~ excel = WIN32OLE.new("excel.application") 
#~ excel['Visible'] = TRUE; 
#~ workbook = excel.Workbooks.Add(); 
#~ excel.Range("a1")['Value'] = 3; 
#~ excel.Range("a2")['Value'] = 2; 
#~ excel.Range("a3")['Value'] = 1; 
#~ excel.Range("a1:a3").Select(); 
#~ excelchart = workbook.Charts.Add(); 
#~ excelchart['Type'] = ChartTypeVal; 
#~ 60.step(180, 1) do |rotation| 
  #~ excelchart['Rotation'] = rotation
#~ end 
#~ excelchart2 = workbook.Charts.Add(); 
#~ excelchart3 = workbook.Charts.Add(); 
#~ charts = workbook.Charts 
#~ charts.each { |i| puts i } 
#excel.ActiveWorkbook.Close(0); 
#excel.Quit();

#~ require 'win32/sound'
#~ include Win32

#~ Sound.play('chimes.wav')
#~ Sound.play('CodeMonkey.wav')

#~ require 'win32/clipboard'
#~ include Win32

#~ puts "Data on clipboard: " + Clipboard.data
#~ puts "Setting data to 'foobar'"
#~ Clipboard.set_data("foobar")
#~ puts "Clipboard now contains: " + Clipboard.data
#~ puts "Clearing clipboard"
#~ Clipboard.empty
#~ puts "Is clipboard empty? show its contents " + Clipboard.data














