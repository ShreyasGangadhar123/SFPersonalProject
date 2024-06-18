public class AccountTriggerHandler {
     public static void updateRating(List<Account> newList)
     {
         for(Account acc: newList)
         {
             if(acc.Industry !=null && acc.Industry=='Media')
             acc.Rating= 'Hot'; //rating
         }
     }
    public static void createRelatedOpp(List<Account> newList)
     {
         List<Opportunity> oppToBeInserted= new List<Opportunity>();
          for(Account acc: newList)
         {
             Opportunity opp= new Opportunity();
             opp.Name= acc.Name;
             opp.AccountId= acc.Id;
             opp.StageName='Prospecting';
             opp.CloseDate= System.today();
             oppToBeInserted.add(opp);
             
}
         if(!oppToBeInserted.isEmpty())
         {
             insert oppToBeInserted;
         }
     }
    public static void updatePhoneDescription(List<Account> newList,Map<Id,Account> oldmap)
     {
         for(Account acc: newList)
         {
             if(oldMap!=null && acc.Phone!= oldMap.get(acc.id).Phone){
                 acc.Description='Phone is modified';
             }
         }
}
    public static void updateRelatedOppPhone(List<Account> newList,Map<Id,Account> oldmap)
     {
         Map<id,Account> accIDToAccountMap= new Map<Id,Account>();
         List<Opportunity> oppToBeUpdated = new List<Opportunity>();
         for(Account acc: newList)
         {
             if(oldMap!=null && acc.Phone != oldMap.get(acc.Id).Phone){
                 accIDToAccountMap.put(acc.id,acc);
             }
         }
         for(Opportunity opp: [SELECT Id,Phone__c,AccountId FROM Opportunity WHERE AccountId IN :accIDToAccountMap.keySet()])
         {
             Opportunity oppor = new Opportunity();
             if(accIdToAccountMap.containsKey(opp.AccountId)){
                 oppor.id=opp.id;
                 oppor.AccountPhone__c= accIdToAccountMap.get(opp.AccountId).Phone;
                 oppToBeUpdated.add(oppor);
             }
             }
             if(!oppToBeUpdated.isEmpty())
             {
                 update oppToBeUpdated;
             }
         }
}