import java.util.Scanner;

public class JavaDemo {

	public static void main(String[] args) {
		int num1, num2;
		String go = "y";
		Scanner scan = new Scanner(System.in);
		while(go.equals("y"))
		{
			System.out.println("Enter number 1:");
			num1 = scan.nextInt();
			System.out.println("Enter number 2:");
			num2 = scan.nextInt();
			System.out.println("The sum of your two numbers is: " + get_sum(num1,num2));
			System.out.println("Do you want to run again? (y/n)");
			go = scan.next();
		}
	}
	
	public static int get_sum(int num1, int num2)
	{
		return num1 + num2;
	}
}
