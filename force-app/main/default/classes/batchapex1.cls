global class batchapex1 implements Database.Batchable<sObject>
{
 global Database.QueryLocator start(Database.BatchableContext bc) //start method
 {
   String query = 'select id, Name from Account where Phone!=null ';
   return Database.getQueryLocator(Query); 
 }
global void execute(Database.BatchableContext bc, List<Account> scope)
//execute method
 { 
  for(Account a : scope)
  { 
    a.name='Mr.'+a.name;
    }
update scope;
  }
global void finish(Database.BatchableContext bc)
//finish method
 {
  }
}