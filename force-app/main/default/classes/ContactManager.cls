public with sharing class ContactManager {
    public static void getAccountRecords(){
        List<Account> accounts=[
            SELECT Id, Name
            FROM Account
            LIMIT 10            
        ];
        for(Account acc:accounts){
            System.debug('Account Name: '+acc.Name);
            System.debug('Account Id: '+acc.Id);
        }
        List<Contact> contacts =new List<Contact>();
        
        for(Account acc:accounts){
            Contact con=new Contact();

            con.FirstName='Tim';
            con.LastName=acc.Name+' Contact';
            con.AccountId=acc.Id;

            contacts.add(con);
        }

        Database.insert(contacts);
        System.debug('Total Contacts created: '+contacts.size());
    }

    
}