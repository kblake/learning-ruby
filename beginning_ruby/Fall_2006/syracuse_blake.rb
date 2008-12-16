require 'rubygems'
require 'highline/import'


#syracuse solution
while(agree("Do you want to run the syracuse program? (y/n)",true))
	number = ask("Enter a number and I'll give you the syracuse sequence",Integer)
	until number == 1
		if number%2 == 0  #is the number even
			number /= 2
		else  #otherwise the number is odd
			number = number*3 + 1
		end
		puts number
	end
end


#shorthand solution -----------------------------------------------------------------------------------------------
#~ while(agree("Do you want to run the syracuse program? (y/n)",true))
	#~ number = ask("Enter a number and I'll give you the syracuse sequence",Integer)
	#~ puts number = (number%2 == 0) ? number/2 : number * 3 + 1 until number == 1
#~ end


#solution with extra credit -----------------------------------------------------------------------------------------------------
#~ while(agree("Do you want to run the syracuse program? (y/n)",true))
	#~ number = ask("Enter a number and I'll give you the syracuse sequence",Integer)
	#~ if ask("Enter 'long' for long list, <enter> key for 5 per line") == "long"
		#~ until number == 1
			#~ if number%2 == 0
				#~ number /= 2
			#~ else
				#~ number = number*3 + 1
			#~ end
			#~ puts number
		#~ end
	#~ else
		#~ per_line = 5
		#~ count = 1
		#~ until number == 1
			#~ if number%2 == 0
				#~ number /= 2
			#~ else
				#~ number = number*3 + 1
			#~ end
			#~ print number, " "
			#~ puts if count%per_line == 0
			#~ count += 1
		#~ end
	#~ end
	#~ puts
#~ end



#short-hand version with extra credit ------------------------------------------------------------------------------------
#~ while(agree("Do you want to run the syracuse program? (y/n)",true))
	#~ number = ask("Enter a number and I'll give you the syracuse sequence",Integer)
	#~ if ask("Enter 'long' for long list, <enter> key for 5 per line") == "long"
		#~ puts number = (number%2 == 0) ? number/2 : number * 3 + 1 until number == 1
	#~ else
		#~ per_line = 5
		#~ count = 1
		#~ until number == 1
			#~ print (number = (number%2 == 0) ? number/2 : number * 3 + 1).to_s + " "
			#~ puts if count%per_line == 0
			#~ count += 1
		#~ end
	#~ end
	#~ puts
#~ end