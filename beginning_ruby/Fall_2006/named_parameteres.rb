def student text, info={}
	puts text
	puts info['name'] if info['name']
	puts info['age'] if info['age']
	puts info['ssn'] if info['ssn']
	puts info['sid'] if info['sid']
end

student "hello",{'name'=>'karmen blake','age'=>99}
puts
student "hello there",'name'=>'john doe','age'=>44,'ssn'=>'1234'
puts
student "hola! tom!",'name'=>'jane doe'
puts
student "greetings",'sid'=>1234,'name'=>'mary','age'=>34