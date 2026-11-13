public with sharing class ListPractice1 {
    List<String> companyNames=new List<String>{
        'FORD Tech','Green Hub','Red Resource','Tray Solution','Wonder Hub '
    };
    public void getCompanyNames(){
        
        Integer count=0;
        for(String str:companyNames){
            System.debug(str+' ');
            count++;
        }
        System.debug('Total Elements are: '+count);
    }
}
