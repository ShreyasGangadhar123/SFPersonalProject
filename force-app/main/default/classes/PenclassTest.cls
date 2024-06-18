@isTest
public class PenclassTest {

    @isTest
    public static void TestFunc1()
    {
        Parker_Pen__c VarP= new Parker_Pen__c();
        VarP.Name='Shreyas';
        VarP.Price__c=200;
        
        insert VarP;
        
        //Create a new record to check the values after discount
        Parker_Pen__c VarP2= new Parker_Pen__c();
        VarP2= [Select Price__c From Parker_Pen__c where Id=: VarP.Id];
        System.assertEquals(180,VarP2.Price__c);
    }
    @isTest
    public static void TestFunc2()
    {
        Parker_Pen__c VarP= new Parker_Pen__c();
        VarP.Name='Shreyas';
        VarP.Price__c=80;
        
        insert VarP;
        
        //Create a new record to check the values after discount
        Parker_Pen__c VarP2= new Parker_Pen__c();
        VarP2= [Select Price__c From Parker_Pen__c where Id=: VarP.Id];
        System.assertEquals(70,VarP2.Price__c);
    }
    @isTest
    public static void TestFunc3()
    {
        Parker_Pen__c VarP= new Parker_Pen__c();
        VarP.Name='Shreyas';
        VarP.Price__c=60;
        
        insert VarP;
        
        //Create a new record to check the values after discount
        Parker_Pen__c VarP2= new Parker_Pen__c();
        VarP2= [Select Price__c From Parker_Pen__c where Id=: VarP.Id];
        System.assertEquals(50,VarP2.Price__c);
    }
    @isTest
    public static void TestFunc4()
    {
        Parker_Pen__c VarP= new Parker_Pen__c();
        VarP.Name='Shreyas';
        VarP.Price__c=30;
        
        insert VarP;
        
        //Create a new record to check the values after discount
        Parker_Pen__c VarP2= new Parker_Pen__c();
        VarP2= [Select Price__c From Parker_Pen__c where Id=: VarP.Id];
        System.assertEquals(25,VarP2.Price__c);
    }
}