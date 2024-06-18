trigger ContactTestTrigger on Contact (after update,before insert) {
      /*  if(Trigger.isAfter && Trigger.isUpdate)
       {
           Set<Id> accIds= new Set<Id>();
           if(!Trigger.new.isEmpty())  //  to check record is not empty
           {
               for(Contact con: Trigger.new)
               {
                   System.debug('Trigger.oldMap.get(con.Id).Description='+Trigger.oldMap.get(con.Id).Description);
                   System.debug('con.Description='+con.Description);
                   System.debug('con.Account.ID='+con.AccountId);
                   if(con.AccountId!=null && Trigger.oldMap.get(con.Id).Description!= con.Description)
                   {
                       accIds.add(con.AccountId);
                   }
               }
               System.debug('accIds='+accIds);
               Map<Id,Account> accMap=  new Map<Id,Account>([Select ID,Description FROM Account Where ID IN: accIds]);
               List<Account> listToUpdateContact= new List<Account>();
               for(Contact cont:trigger.new)
               {
                   Account acc= accMap.get(cont.AccountId);
                   if(cont.Description!=null){
                   acc.Description=cont.Description;
                   listToUpdateContact.add(acc);
                       System.debug('listToUpdateContact='+listToUpdateContact);
                   }
               }
               System.debug('listToUpdateContact size='+listToUpdateContact.size());
               if(!listToUpdateContact.isEmpty())
               {
                 update listToUpdateContact;
               }
           }
       }*/
    
}