@isTest  
public class ElectronicsShopTest {
    @isTest
    static void TestFunc1()
    {
        Electronic__c VarP= new Electronic__c();  //creating a new record
        VarP.Name='Shreyas';                  //assigning values to variables
        VarP.Price__c=200;
        VarP.Type__c='TV';
        
        insert VarP;  //trigger being called
        
        //Creating a new record for verifying discount
        Electronic__c VarP2= new Electronic__c();
        VarP2= [Select Price__c from Electronic__c where id=: VarP.Id];
        System.assertEquals(150, VarP2.Price__c);
    }
    @isTest
    static void TestFunc2()
    {
        Electronic__c VarP= new Electronic__c();  //creating a new record
        VarP.Name='Shreyas';                  //assigning values to variables
        VarP.Price__c=200;
        VarP.Type__c='LCD';
        
        insert VarP;  //trigger being called
        
        //Creating a new record for verifying discount
        Electronic__c VarP2= new Electronic__c();
        VarP2= [Select Price__c from Electronic__c where id=: VarP.Id];
        System.assertEquals(170, VarP2.Price__c);
    }
    @isTest
    static void TestFunc3()
    {
        Electronic__c VarP= new Electronic__c();  //creating a new record
        VarP.Name='Shreyas';                  //assigning values to variables
        VarP.Price__c=200;
        VarP.Type__c='LED';
        
        insert VarP;  //trigger being called
        
        //Creating a new record for verifying discount
        Electronic__c VarP2= new Electronic__c();
        VarP2= [Select Price__c from Electronic__c where id=: VarP.Id];
        System.assertEquals(180, VarP2.Price__c);
    }
}