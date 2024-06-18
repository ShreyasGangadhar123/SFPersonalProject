trigger DuplicateTrigger on Account (before insert,before update,after insert,after update) {
       /*if(Trigger.isBefore && (Trigger.isInsert || Trigger.isUpdate))
       {
           Set<String> accNames= new Set<String>();
           if(!Trigger.new.isEmpty())
           {
               for(Account acc: Trigger.new){
                   accNames.add(acc.Name);
               }
               System.debug('accNames='+accNames);
             List<Account> accList= [SELECT Id,Name From Account Where Name IN : accNames];
               System.debug('accList='+accList);
             Map<String,Account> existingAccMap = new Map<String,Account>();
               if(!accList.isEmpty())
               {
                   for(Account acct: accList){
                       existingAccMap.put(acct.Name,acct);
                   }
               }
               //System.debug('accList='+accList);
               if(!existingAccMap.isEmpty())
               {
                  for(Account accObj: Trigger.new)
                  {
                      if(existingAccMap.containsKey(accObj.Name))
                      {
                          accObj.Name.addError('Heyyy! No duplicate records allowed mate');
                      }
                  }
               }
           }
       }*/
    if(Trigger.isAfter && (Trigger.isInsert || Trigger.isUpdate))
       {
           if(!Trigger.new.isEmpty())
           {
               List<Contact> listToUpdate= new List<Contact>();
               for(Account acc: trigger.new)
               {
                   if(acc.Create_Contact_c__c==True)
                   {
                       Contact con= new Contact();
                       con.AccountId= acc.Id;
                       con.FirstName= 'Test';
                       con.LastName= acc.Name;
                       con.Phone= acc.Phone;
                       listToUpdate.add(con);
                   }
                   
               }
               System.debug('listToUpdate='+listToUpdate);
               if(!listToUpdate.isEmpty())
               {
                   //insert listToUpdate;
               }
           }           
       }
}