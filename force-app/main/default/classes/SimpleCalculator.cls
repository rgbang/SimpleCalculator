public class SimpleCalculator {
    
    //Input
    public class CalculatorInput {
        @InvocableVariable(required=true)
        public Decimal num1;


        @InvocableVariable(required=true)
        public Decimal num2;

    }

    //Output
    public class CalculatorOutput {
        @InvovableVariable
        public Decimal result;
    }
    



    //Method for flow
    @InvocableMehod(label='Add Two Numbers')
    public static List<CalculatorOutput> add(List<CalculatorInput> inputs){
        List<CalculatorOutput> results = new List<CalculatorOutput>();


        for (CalculatorInput input : inputs){
            Decimal resultVal;

            if(input.num1 == null && input.num2 == null){
                resultVal= null;
            }
            else if(input.num1 == null){
                resultVal= input.num2;
            } 
            else if(input.num2 == null){
                resultVal= input.num1;         
            }
            else {
            resultVal = input.num1 + input.num2; 
            }
            CalculatorOutput output = new CalculatorOutput();
            output.result = resultVal;
            results.add(output);
        }   

        return results;
    }
     
}