@isTest
public class SimpleCalculatorTest {
    
    @TestSetup
    static void makeData(){
        Account testAccount = new Account( Name = 'Test Account for simple calculator' );
        insert testAccount;
        
    }

    @isTest
    static void addTests(){
        Test.startTest();

        Integer num1;
        Integer num2;
        Integer expected;
        Integer actual;

        /**
         * Test with 2 positive Integers
         */

        num1 = 10;
        num2 = 10;
        expected = 20;
        actual = SimpleCalculator.add(num1, num2);
        System.assertEquals(expected, actual,'Addition with 2 positive integers');
        
        /*
        *Test with 1 positive Integer and 1 null
        */

        num1 = 5;
        num2 = null;
        expected = 5;
        actual = SimpleCalculator.add(num1, num2);
        System.assertEquals(expected, actual, 'Addition with 1 positive integer and 1 null failed');

        /*
        *Test with 1 positive Integer and 1 null
        */

        num1 = null;
        num2 = 5;
        expected = 5;
        actual = SimpleCalculator.add(num1, num2);
        System.assertEquals(expected, actual, 'Addition with 1 positive integer and 1 null failed');        
        
        
        /*
        *Test with 2 nulls       
        */

        num1 = null;
        num2 = null;
        expected = 0;
        actual = SimpleCalculator.add(num1,num2);
        System.assertEquals(expected,actual,'Addition with 2 nulls failed');

        Test.stopTest();




    }

}