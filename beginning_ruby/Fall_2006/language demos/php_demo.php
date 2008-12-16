<?php
	function get_sum($num1,$num2)
	{
		return $num1 + $num2;	
	}
	
	
	$go = "y";
	while($go == "y")
	{
		print "Enter number 1: ";
		$num1 = read();
		print "Enter number 2: ";
		$num2 = read();	
		print "The sum of your two numbers is: " + get_sum($num1, $num2); 
		print "Do you want to run again? (y/n)";
		$go = read();
	}
	
?>