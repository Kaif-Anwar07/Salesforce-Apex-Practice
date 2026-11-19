public with sharing class OpportunityManager {
    public static void createOpportunities(){
        List<Opportunity> oppList =new List<Opportunity>();

        for(Integer i=1; i<=20; i++){
            Opportunity opp =new Opportunity();
            opp.Name='Opportunity '+i;
            opp.StageName='Closed Won';
            opp.CloseDate=Date.today().addDays(i+2);

            oppList.add(opp);
        }
        Database.insert(oppList);
    }
}