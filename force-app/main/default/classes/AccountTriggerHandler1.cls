public with sharing class AccountTriggerHandler1 {
  public static void handleBeforeInsert(List<Account> accList){ 
               System.debug('accList='+accList);
               Map<Id,Account> accMap= new Map<Id,Account>([Select Id,Name From Account]);
               System.debug('accMap='+accMap);
               System.debug('accMap.size()='+accMap.size());
               for(Account acc: accList)  //Iterating over the new record values
               {
                  if(acc.Phone==null)
                   {
                       acc.Phone.addError('You cannot leave a Phone field empty.');
                   }
                   if(acc.BillingStreet!=null)
                   {
                       acc.ShippingStreet= acc.BillingStreet;
                   }
                   if(acc.BillingCity !=null)
                   {
                       acc.ShippingCity= acc.BillingCity;
                   }
                   if(acc.BillingState!=null)
                   {
                       acc.ShippingState = acc.BillingState;
                   }
                   if(acc.BillingPostalCode !=null)
                   {
                       acc.ShippingPostalCode = acc.BillingPostalCode;
                   }
                   if(acc.BillingCountry !=null)
                   {
                       acc.ShippingCountry = acc.BillingCountry;
                   }
                   if(Trigger.isBefore && Trigger.isInsert)
                   {
                   for(Account acc1: accMap.values())  //Iterating over the new record values
               {
                   if(acc.Name== acc1.Name)
                   {
                       acc.addError('Duplicate account exists');
                   }   
                 }
               }
                 
               }
               }
    public static void handleAfterInsert(List<Account> acct){ 
        List<Contact> conList1= new List<Contact>();
        List<Id> accIds=new List<Id>();
        Map<id, Account> mapAccount = new Map<id, Account>([SELECT Id,Phone,Create_Contact_c__c From Account]);
        Map<Id,Account> accMap= new Map<id, Account>();
        Map<Id,Contact> conMap= new Map<id, Contact>([SELECT AccountId,Phone From Contact where AccountId!=null AND Phone!=null ]);
        System.debug('conMap='+conMap);
        for(Account acc: acct)  //Iterating over the new record values
               {
                   if(accIds.size()!= acct.size())
                   {
                        accIds.add(acc.id);
                   }
                  
          if(acc.Create_Contact_c__c ==true && mapAccount.get(acc.id).Create_Contact_c__c!=true){
                       System.debug('acc.Create_Contact_c__c'+acc.Create_Contact_c__c);
                       System.debug('mapAccount.get(acc.id).Create_Contact_c__c='+mapAccount.get(acc.id).Create_Contact_c__c);
                       Contact con= new Contact();
                       con.Phone= acc.Phone;
                       con.AccountId= acc.Id;
                       con.LastName= acc.Name;
                       conList1.add(con);
              insert conList1;//not the right practice but for time being including this here
                   }
               }
        
        
                 
        List<Contact> conList = new List<Contact>();
        
        for(Account acc:acct)

        {   
            for (Contact con:conMap.Values())
            {
               if(acc.Id== con.AccountId)
             {
                 System.debug('Entered');
                 if(acc.Phone!= con.Phone){
                       accMap.put(acc.id, acc);
                 }
            }

        }
        }
        System.debug('accMap.:'+ accMap);

        if(accMap.size()>0){

                conList = [Select id, name, phone, AccountId From Contact where AccountId IN:accMap.keySet()];

        }
        System.debug('ConList:'+ conList);

        if(conList.size()>0)
        {

            for(Contact cont:conList){

                cont.Phone = mapAccount.get(cont.AccountId).Phone;

               }
        }
       System.debug('Updated ConList:'+ conList);
       update conList;
     
       Map<Id,Opportunity> oppMap= new Map<Id,Opportunity>([SELECT Id,AccountId,StageName,CreatedDate,Close_Reason__c  From Opportunity where StageName!='Closed Won' AND AccountId IN:accIDs]);
       List<Opportunity> oppS= new List<Opportunity>();
        for(Opportunity opp: oppMap.Values()){
            if(opp.StageName!='Closed Lost'){
                opp.StageName='Closed Lost';
                opp.Close_Reason__c='Lost: Other Reason';
                oppS.add(opp);
            }   
        }
        update oppS;
       
           }    
    public static void handleBeforeDelete(List<Account> accList)
    {
               for(Account acc:accList)  //Iterating over the new record values
               {
                   if(acc.Active__c=='Yes')
                   {
                       acc.addError('You cannot delete an active record');
                   }
                   
               }
           }
}