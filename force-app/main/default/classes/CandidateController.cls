public class CandidateController {
 public Candidate__c cand{get;set;}
    public candidatecontroller(){
        cand=new Candidate__c();
    }
     public void insertCandidate(){
         insert cand;
         system.debug('Candidate details'+cand);
         if(cand.id!=null){
         ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.CONFIRM,'Record inserted successfully'));
     }
         else{
              ApexPages.addMessage(new ApexPages.message(ApexPages.Severity.CONFIRM,'Record was not inserted successfully'));
         }
     }
}