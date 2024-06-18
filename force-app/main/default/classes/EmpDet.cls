public class EmpDet {
 public static void Class1()
    {
      list<EmployeeDetail__c> MyList= new list<EmployeeDetail__c>();   
       MyList= [ SELECT FirstName__c FROM EmployeeDetail__c LIMIT 5];
  
    }
}