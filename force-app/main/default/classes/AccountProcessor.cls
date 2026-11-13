public with sharing class AccountProcessor {

    public static List<Account> createAccountRecords(){
        List<Account> accRecords= new List<Account>();
        Account acc=new Account(
            Name ='ABC Technologies',
            Industry ='Technology'
        );
        Account acc2=new Account(
            Name='XYZ Solution',
            Industry='Finance'
        );
        Account acc3=new Account(
            Name='Tech World',
            Industry='Education'
        );

        accRecords.add(acc);
        accRecords.add(acc2);
        accRecords.add(acc3);

    return accRecords;
    }

    public static void insertAccounts(){
        List<Account> accRecord =AccountProcessor.createAccountRecords();
        try{
             insert accRecord;
             System.debug('Accounts inserted successfully!');

        }catch(DmlException e){
            System.debug(e.getMessage());
        } 
    }

    public void updateAccounts(){
        
        try{
            List<Account> accRec=[
            SELECT Id,Name,Industry
            FROM Account
            WHERE Industry='Technology'
            ];
            for(Account ac:accRec){
            ac.Name=ac.Name+ ' Pvt Ltd';
            }   

            update accRec;
            System.debug('Accounts updated successfully!');

        }catch(DmlException e){
            System.debug(e.getMessage());
        }
        
    }
}