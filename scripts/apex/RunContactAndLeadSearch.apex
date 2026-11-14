List<List<SObject>> searchResult=ContactAndLeadSearch.searchContactsAndLeads('Smith');

System.debug('Contacts: '+searchResult[0]);
System.debug('Leads: '+searchResult[1]);