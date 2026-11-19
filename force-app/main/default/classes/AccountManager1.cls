public with sharing class AccountManager1 {
    public static void createAccounts(){
        List<String> accountName=new List<String>{
            'Salesforce',
            'Cloud Ingenious',
            '360 DegreeCloud',
            'TCS','Wipro','IBM','Google','Microsoft','Tech Mahindra',
            'Infosys',
            'Wipro','Accenture','Amazon',
            'Oracle','Adobe',
            'HCL Technologies',
            'Cognizant',
            'Capgemini',
            'Paytm','Jspyder'
        };

        List<Account> accounts=new List<Account>();

        for(Integer i=0; i<accountName.size(); i++){
            Account acc=new Account();

            acc.Name=accountName[i];
            acc.Phone='9988554466';
            acc.BillingCity='Banglore';
            acc.Description='This is a World 1st Cloud CRM company';
            acc.Industry='Technology';

            accounts.add(acc);
        }
        Database.insert(accounts);
    }
}