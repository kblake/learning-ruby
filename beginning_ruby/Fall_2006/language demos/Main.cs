/*
 * Created by SharpDevelop.
 * User: KBlake
 * Date: 3/11/2005
 * Time: 3:03 PM
 */
using System;

namespace c_sharpDemo
{
	class MainClass
	{
		public static void Main(string[] args)
		{
			string go = "y";
			int num1, num2;
			while(go == "y")
			{
				Console.WriteLine("Enter number 1");
				num1 = int.Parse(Console.ReadLine());
				Console.WriteLine("Enter number 2");
				num2 = int.Parse(Console.ReadLine());
				Console.WriteLine("The sum of your two numbers are: " + get_sum(num1, num2));
				Console.WriteLine("Do you want to run again? (y/n)");
				go = Console.ReadLine();
			}
		}
		static int get_sum(int num1, int num2)
		{
			return num1 + num2;
		}
	}
	
}
