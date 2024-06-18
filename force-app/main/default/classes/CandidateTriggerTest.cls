@isTest
public class CandidateTriggerTest {
@isTest
public static void testCandidateTriggerError()
{
    try{
    Candidate__c cc = new Candidate__c();
    cc.First_Name__c='Rohit';
    cc.Last_Name__c='';
    cc.State_Province__c='NA';
    insert cc;
    }
    catch(Exception e){
                Boolean expectedExceptionThrown =  e.getMessage().contains('First Name or Last Name should not be empty.') ? true : false;
                System.AssertEquals(expectedExceptionThrown, true);
            }  
}
}