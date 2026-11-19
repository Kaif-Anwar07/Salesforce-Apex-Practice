public with sharing class AccountMapPractice {
    public static void displayAccountMap(){
        Map<Id,Account> accountMap=new Map<Id,Account>([
            SELECT Id,Name,Industry
            FROM Account
            Limit 10
        ]);

        for(Id accountId: accountMap.keySet()){
            System.debug('Account Id: '+accountId);
        }

        for(Account acc:accountMap.values()){
            System.debug('Account name: '+acc.Name);
        }
        System.debug('Total records '+accountMap.size());
    }
}