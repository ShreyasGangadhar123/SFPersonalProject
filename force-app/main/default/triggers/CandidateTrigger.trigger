trigger CandidateTrigger on Candidate__c (before insert) {
 for(Candidate__c c1: trigger.New)
    {
        if(c1.First_Name__c==Null || c1.Last_Name__c==Null)
        {
            trigger.new[0].addError('First Name or Last Name should not be empty.');
               
        }
    }
}