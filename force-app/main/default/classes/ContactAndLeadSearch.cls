public with sharing class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads(
        String searchText
    ){
        List<List<SObject>> result=[
            FIND :searchText IN NAME FIELDS
            RETURNING
                Contact(Id,FirstName,LastName),
                Lead(Id,FirstName,LastName)
        ];
        return result;
    }
}