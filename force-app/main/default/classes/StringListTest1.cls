public with sharing class StringListTest1 {
    public static List<String> 
        generateTestList(Integer num){
            List<String> result = new List<String>();

            for(Integer i=0; i<num; i++){
                result.add('Test '+ i);
            }
            return result;
        }
}