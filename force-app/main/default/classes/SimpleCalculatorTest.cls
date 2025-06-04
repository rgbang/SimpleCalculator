@isTest
public class SimpleCalculatorTest {

    @TestSetup
    static void makeData() {
        Account testAccount = new Account(Name = 'Test Account for simple calculator');
        insert testAccount;
    }

    @isTest
    static void addTests() {
        Test.startTest();

        Decimal num1;
        Decimal num2;
        Decimal expected;
        Decimal actual;

        // Test with 2 positive Integers
        num1 = 15;
        num2 = 15;
        expected =30;
        actual = SimpleCalculator.add(num1, num2);
        System.assertEquals(expected, actual, 'Addition with 2 positive integers');

        // Test with 1 null
        num1 = 5;
        num2 = null;
        expected = 5;
        actual = SimpleCalculator.add(num1, num2);
        System.assertEquals(expected, actual, 'Addition with 1 positive and 1 null');

        // Test with 1 null
        num1 = null;
        num2 = 5;
        expected = 5;
        actual = SimpleCalculator.add(num1, num2);
        System.assertEquals(expected, actual, 'Addition with 1 null and 1 positive');

        // Test with both nulls
        num1 = null;
        num2 = null;
        expected = null;
        actual = SimpleCalculator.add(num1, num2);
        System.assertEquals(expected, actual, 'Addition with 2 nulls');

        Test.stopTest();
    }
}
