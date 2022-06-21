package signUpMenu;

import java.util.Scanner;

public class signUpMenu {

	public static void SignUpMain(String[] args) {

		Scanner scanner = new Scanner(System.in);

		System.out.println("============================");
		System.out.println("|          SIGN UP!        |");
		System.out.println("============================");
		System.out.println("|       Please, enter      |");
		System.out.println("|     your credentials:    |");
		System.out.println("|--------------------------|");
		System.out.println("|       First name:        |");
		String firstName = scanner.nextLine();
		System.out.println("|       Last name:         |");
		String LastName = scanner.nextLine();
		System.out.println("|       Username:          |");
		String username = scanner.nextLine();
		System.out.println("|       E-mail:            |");
		String userEmail = scanner.nextLine();
		checkConfirmPassword();
		System.out.println("============================");

	}

	public static void checkConfirmPassword() {
		Scanner sc = new Scanner(System.in);
		System.out.println("|       Password:          |");
		String password = sc.nextLine();
		System.out.println("|       Confirm password:  |");
		String confirmPassword = sc.nextLine();

		if (!confirmPassword.equals(password)) {
			System.out.println("Incorrect input! Please try again.");
			checkConfirmPassword();
		}
		else
		{
			System.out.println("Password confirmed!");
		}

	}

}
