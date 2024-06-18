trigger ContactTestTrigger2 on Contact (before delete,before insert,after insert,before update,after update,after undelete,after delete) {
   /*    Set<ID> accIds= new Set<ID>();
    System.debug('Entered contact trigger');
       if(Trigger.isAfter && (Trigger.isInsert || Trigger.isUndelete ))
       {
           for(Contact con: Trigger.new)
           {
               if(con.AccountId != null)
               {
                   accIds.add(con.AccountId);
               }
           }
       }
       if(Trigger.isAfter && Trigger.isUpdate)
       {
            for(Contact con: Trigger.new)
           {
               if(con.AccountId != null && Trigger.oldMap.get(con.Id).AccountId!= con.AccountId && Trigger.oldMap.get(con.Id).AccountId!=null )
               {
                     accIds.add(con.AccountId);
               }  
               
           }
       }
    if(Trigger.isAfter && Trigger.isDelete){
        for(Contact con: Trigger.old)
           {
               if(con.AccountId != null)
               {
                   accIds.add(con.AccountId);
               }
           }
    }
    if(!accIds.isEmpty())
    {
        List<Account> accList= [SELECT ID,Number_Of_Contacts__c,(SELECT ID FROM Contacts) From Account Where ID IN:accIds];
        List<Account> listOfAccountsToBeUpdated= new List<Account>();
        if(!accList.isEmpty())
        {
            for(Account acc: accList)
           {
               acc.Number_Of_Contacts__c= acc.Contacts.size();
               listOfAccountsToBeUpdated.add(acc);
           }
        }  
        if(!listOfAccountsToBeUpdated.isEmpty()){
            Update listOfAccountsToBeUpdated;
        }
    }
    if(Trigger.isBefore && Trigger.isInsert)
       {
           
           for(Contact con: Trigger.new)
           {
              
               if(con.AccountId != null)
               {
                   accIds.add(con.AccountId);
               }
           }
           
           System.debug('accIds:'+accIds);
           List<Account> accList= [SELECT ID,Number_Of_Contacts__c,(SELECT ID FROM Contacts) From Account Where ID IN:accIds];
           for(Contact con: Trigger.new)
           {
            for(Account acc: accList)
           {  
               if(acc.Number_Of_Contacts__c>=2)
               {
                   con.LastName.addError('Only 2 contacts allowed per Account');
               }
           }
       }
       }*/
}