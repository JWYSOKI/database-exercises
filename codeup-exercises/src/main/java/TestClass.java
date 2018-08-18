import org.apache.commons.lang3.StringUtils;

import java.util.Scanner;

public class TestClass {

   public static Scanner scanner = new Scanner(System.in);

    public static void main(String[] args) {
        System.out.println("Enter Something: ");
        String userInput = scanner.nextLine() ;
        System.out.println("You Entered: " + userInput);

        if(StringUtils.isNumeric(userInput)){
            System.out.println(userInput + " is a number");
        } else
            System.out.println(userInput + " is not a number");

        System.out.println("Flipped Case: " + StringUtils.swapCase(userInput));

        System.out.println("Reversed: " + StringUtils.reverse(userInput));

    }
}
