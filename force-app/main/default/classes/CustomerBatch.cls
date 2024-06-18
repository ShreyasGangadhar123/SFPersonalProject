global class CustomerBatch implements Database.Batchable <sObject>
{
 public string myname;

 global customerBatch(String myname)
 {
  this.myname = myname;
 }
global Database.QueryLocator Start(Database.BatchableContext BC)
 {
  return Database.getQueryLocator('SELECT id,Type FROM Account WHERE Name='+ myname);
 }
 global void execute(Database.BatchableContext BC, List<Customer__c> Scope)
 {
  List<Customer__c> cust = new List<Customer__c>();
  for(Customer__c c : cust)
 {
  c.Name = 'Other';
  cust.add(c);
 } 
update cust;
 } 
global void finish (Database.BatchableContext BC)
 {

 }
}