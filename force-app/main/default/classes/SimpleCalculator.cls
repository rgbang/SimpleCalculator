public class SimpleCalculator {
    
    public static Integer add(Integer num1, Integer num2){
        if(num1 == null && num2 == null){
            return null;
        }
        else if(num1 == null){
            return num2;
        } 
        else if(num2 == null){
            return num1;         
        }
		return num1 + num2;        
    }
     
}