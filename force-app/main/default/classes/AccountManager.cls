public with sharing class AccountManager {
    public static void processAccounts(){
        List<Account> accounts=[
            SELECT Id,Name,Industry
            FROM Account
            WHERE Industry='Technology'
            LIMIT 10
        ];
        List<Account> matchingAccounts=new List<Account>();
        for(Account acc:accounts){
            
            if(acc.Name.contains('Tech')){
                acc.Name=acc.Name+'_updated';
                matchingAccounts.add(acc);
            }
        }
        if(!matchingAccounts.isEmpty()){
            try{
                update matchingAccounts;
                System.debug('Account updated successfully!');
            }catch(DmlException e){
                System.debug('Error: '+e.getMessage());
            }
                
        }
        
        
    }
    
}