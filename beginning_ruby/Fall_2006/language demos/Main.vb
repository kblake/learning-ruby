'
' Created by SharpDevelop.
' User: KBlake
' Date: 3/11/2005
' Time: 3:20 PM
'
Imports System
Module Main
	Sub Main()
		Dim go As String="y"
		Dim num1, num2 As Integer
		While go = "y"
			Console.WriteLine("Enter number 1")
			num1 = Convert.ToInt32(Console.ReadLine())
			Console.WriteLine("Enter number 2")
			num2 = Convert.ToInt32(Console.ReadLine())
			Console.WriteLine("The sum of your two numbers are: " + get_sum(num1, num2))
			Console.WriteLine("Do you want to run again? (y/n)")
			go = Console.ReadLine()
		End While
		
	End Sub
	
	Function get_sum(ByVal num1 As Integer, num2 As Integer) As Integer
		get_sum = num1 + num2
	End Function
End Module





