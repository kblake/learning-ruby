import java.util.Scanner

class GroovyDemo{

	 static void main(args) 
	 {
	 	go = "y"
	 	Scanner scan = new Scanner(System.in)
	 	
	 	while(go == "y")
	 	{
	 		println "Enter number 1: "
		 	num1 = scan.nextInt()
		 	println "Enter number 2: "
		 	num2 = scan.nextInt()
		 	println "The sum of your numbers is: ${get_sum(num1,num2)}"
		 	println "Do you want to run again? (y/n)"
		 	go = scan.next()
		 }
	 }
	
	static int get_sum(num1,num2)
	{
		return num1 + num2
	}
}