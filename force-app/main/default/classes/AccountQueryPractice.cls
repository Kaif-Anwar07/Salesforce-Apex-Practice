public with sharing class AccountQueryPractice {
    

    public void  getTechnologyAccounts(){
        List<Account> records=[
            SELECT Id,Name,Industry
            FROM  Account
            WHERE Industry='Technology'
        ];

        for(Account acc:records){
            System.debug('Name: '+acc.Name+', Industry: '+acc.Industry);
        }
        System.debug('accounts fetched: '+records.size());
    }
}