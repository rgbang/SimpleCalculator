public class SimpleCalculator {

    // Input wrapper for Flow
    public class CalculatorInput {
        @InvocableVariable(required=true)
        public Decimal num1;

        @InvocableVariable(required=true)
        public Decimal num2;
    }

    // Output wrapper for Flow
    public class CalculatorOutput {
        @InvocableVariable
        public Decimal result;
    }

    // Utility method for direct Apex testing
    public static Decimal add(Decimal num1, Decimal num2) {
        if (num1 == null && num2 == null) return null;
        if (num1 == null) return num2;
        if (num2 == null) return num1;
        return num1 + num2;
    }

    // Flow-invocable method
    @InvocableMethod(label='Add Two Numbers')
    public static List<CalculatorOutput> add(List<CalculatorInput> inputs) {
        List<CalculatorOutput> results = new List<CalculatorOutput>();

        for (CalculatorInput input : inputs) {
            Decimal resultVal = add(input.num1, input.num2); // Reuse logic

            CalculatorOutput output = new CalculatorOutput();
            output.result = resultVal;
            results.add(output);
        }

        return results;
    }
}
